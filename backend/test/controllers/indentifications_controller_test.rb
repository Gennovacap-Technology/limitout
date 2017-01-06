require 'test_helper'

class IndentificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @indentification = indentifications(:one)
  end

  test "should get index" do
    get indentifications_url, as: :json
    assert_response :success
  end

  test "should create indentification" do
    assert_difference('Indentification.count') do
      post indentifications_url, params: { indentification: { proven: @indentification.proven } }, as: :json
    end

    assert_response 201
  end

  test "should show indentification" do
    get indentification_url(@indentification), as: :json
    assert_response :success
  end

  test "should update indentification" do
    patch indentification_url(@indentification), params: { indentification: { proven: @indentification.proven } }, as: :json
    assert_response 200
  end

  test "should destroy indentification" do
    assert_difference('Indentification.count', -1) do
      delete indentification_url(@indentification), as: :json
    end

    assert_response 204
  end
end
