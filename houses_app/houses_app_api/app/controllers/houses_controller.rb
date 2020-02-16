class HousesController < ApplicationController
  before_action :set_house, only: [:show]

  # GET /houses
  def index
    @houses = House.all

    render json: @houses.to_json(include: :listeds)
  end

  # GET /houses/1
  def show
    render json: @house.to_json(include: :listeds)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house
      @house = House.find(params[:id])
    end

end
