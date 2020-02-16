require 'test_helper'

class ListedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listed = listeds(:one)
  end

  test "should get index" do
    get listeds_url, as: :json
    assert_response :success
  end

  test "should create listed" do
    assert_difference('Listed.count') do
      post listeds_url, params: { listed: { listed_price: @listed.listed_price, sold_price: @listed.sold_price } }, as: :json
    end

    assert_response 201
  end

  test "should show listed" do
    get listed_url(@listed), as: :json
    assert_response :success
  end

  test "should update listed" do
    patch listed_url(@listed), params: { listed: { listed_price: @listed.listed_price, sold_price: @listed.sold_price } }, as: :json
    assert_response 200
  end

  test "should destroy listed" do
    assert_difference('Listed.count', -1) do
      delete listed_url(@listed), as: :json
    end

    assert_response 204
  end
end
