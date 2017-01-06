require 'test_helper'

class HuntingAmenitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hunting_amenity = hunting_amenities(:one)
  end

  test "should get index" do
    get hunting_amenities_url, as: :json
    assert_response :success
  end

  test "should create hunting_amenity" do
    assert_difference('HuntingAmenity.count') do
      post hunting_amenities_url, params: { hunting_amenity: { ammo: @hunting_amenity.ammo, food: @hunting_amenity.food, gear: @hunting_amenity.gear, guns: @hunting_amenity.guns, lodging: @hunting_amenity.lodging, vehicles: @hunting_amenity.vehicles } }, as: :json
    end

    assert_response 201
  end

  test "should show hunting_amenity" do
    get hunting_amenity_url(@hunting_amenity), as: :json
    assert_response :success
  end

  test "should update hunting_amenity" do
    patch hunting_amenity_url(@hunting_amenity), params: { hunting_amenity: { ammo: @hunting_amenity.ammo, food: @hunting_amenity.food, gear: @hunting_amenity.gear, guns: @hunting_amenity.guns, lodging: @hunting_amenity.lodging, vehicles: @hunting_amenity.vehicles } }, as: :json
    assert_response 200
  end

  test "should destroy hunting_amenity" do
    assert_difference('HuntingAmenity.count', -1) do
      delete hunting_amenity_url(@hunting_amenity), as: :json
    end

    assert_response 204
  end
end
