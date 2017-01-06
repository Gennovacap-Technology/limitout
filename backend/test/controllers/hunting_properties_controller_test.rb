require 'test_helper'

class HuntingPropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hunting_property = hunting_properties(:one)
  end

  test "should get index" do
    get hunting_properties_url, as: :json
    assert_response :success
  end

  test "should create hunting_property" do
    assert_difference('HuntingProperty.count') do
      post hunting_properties_url, params: { hunting_property: { acreage: @hunting_property.acreage, address: @hunting_property.address, blind_types: @hunting_property.blind_types, city: @hunting_property.city, description: @hunting_property.description, feeders: @hunting_property.feeders, natural_feeders: @hunting_property.natural_feeders, number_blinds: @hunting_property.number_blinds, state: @hunting_property.state, vegetation: @hunting_property.vegetation, water_sources: @hunting_property.water_sources } }, as: :json
    end

    assert_response 201
  end

  test "should show hunting_property" do
    get hunting_property_url(@hunting_property), as: :json
    assert_response :success
  end

  test "should update hunting_property" do
    patch hunting_property_url(@hunting_property), params: { hunting_property: { acreage: @hunting_property.acreage, address: @hunting_property.address, blind_types: @hunting_property.blind_types, city: @hunting_property.city, description: @hunting_property.description, feeders: @hunting_property.feeders, natural_feeders: @hunting_property.natural_feeders, number_blinds: @hunting_property.number_blinds, state: @hunting_property.state, vegetation: @hunting_property.vegetation, water_sources: @hunting_property.water_sources } }, as: :json
    assert_response 200
  end

  test "should destroy hunting_property" do
    assert_difference('HuntingProperty.count', -1) do
      delete hunting_property_url(@hunting_property), as: :json
    end

    assert_response 204
  end
end
