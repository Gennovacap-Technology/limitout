require 'test_helper'

class AnimalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal = games(:one)
  end

  test "should get index" do
    get games_url, as: :json
    assert_response :success
  end

  test "should create game" do
    assert_difference('Animal.count') do
      post games_url, params: { game: { abundance: @animal.abundance, game_type: @animal.game_type, number_animals: @animal.number_animals, quality: @animal.quality } }, as: :json
    end

    assert_response 201
  end

  test "should show game" do
    get game_url(@animal), as: :json
    assert_response :success
  end

  test "should update game" do
    patch game_url(@animal), params: { game: { abundance: @animal.abundance, game_type: @animal.game_type, number_animals: @animal.number_animals, quality: @animal.quality } }, as: :json
    assert_response 200
  end

  test "should destroy game" do
    assert_difference('Animal.count', -1) do
      delete game_url(@animal), as: :json
    end

    assert_response 204
  end
end
