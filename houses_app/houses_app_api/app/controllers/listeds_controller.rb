class ListedsController < ApplicationController
  before_action :set_listed, only: [:update, :destroy]

  # GET /listeds
  def index
    @listeds = Listed.all

    render json: @listeds
  end

  # POST /listeds
  def create
    @listed = Listed.new(listed_params)
    @listed.house_id = params[:house_id]

    if @listed.save
      render json: @listed, status: :created
    else
      render json: @listed.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /listeds/1
  def update
    if @listed.update(listed_params)
      render json: @listed
    else
      render json: @listed.errors, status: :unprocessable_entity
    end
  end

  # DELETE /listeds/1
  def destroy
    @listed.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listed
      @listed = Listed.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def listed_params
      params.require(:listed).permit(:listed_price, :sold_price)
    end
end
