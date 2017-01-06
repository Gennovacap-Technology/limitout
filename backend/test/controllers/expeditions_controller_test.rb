require 'test_helper'

class ExpeditionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expedition = expeditions(:one)
  end

  test "should get index" do
    get expeditions_url, as: :json
    assert_response :success
  end

  test "should create expedition" do
    assert_difference('Expedition.count') do
      post expeditions_url, params: { expedition: { allow_multiple_bookings_on_date: @expedition.allow_multiple_bookings_on_date, cost: @expedition.cost, description: @expedition.description, number_of_guests: @expedition.number_of_guests, title: @expedition.title } }, as: :json
    end

    assert_response 201
  end

  test "should show expedition" do
    get expedition_url(@expedition), as: :json
    assert_response :success
  end

  test "should update expedition" do
    patch expedition_url(@expedition), params: { expedition: { allow_multiple_bookings_on_date: @expedition.allow_multiple_bookings_on_date, cost: @expedition.cost, description: @expedition.description, number_of_guests: @expedition.number_of_guests, title: @expedition.title } }, as: :json
    assert_response 200
  end

  test "should destroy expedition" do
    assert_difference('Expedition.count', -1) do
      delete expedition_url(@expedition), as: :json
    end

    assert_response 204
  end
end
