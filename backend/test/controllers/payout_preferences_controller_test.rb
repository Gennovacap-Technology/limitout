require 'test_helper'

class PayoutPreferencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payout_preference = payout_preferences(:one)
  end

  test "should get index" do
    get payout_preferences_url, as: :json
    assert_response :success
  end

  test "should create payout_preference" do
    assert_difference('PayoutPreference.count') do
      post payout_preferences_url, params: { payout_preference: { bank_account: @payout_preference.bank_account } }, as: :json
    end

    assert_response 201
  end

  test "should show payout_preference" do
    get payout_preference_url(@payout_preference), as: :json
    assert_response :success
  end

  test "should update payout_preference" do
    patch payout_preference_url(@payout_preference), params: { payout_preference: { bank_account: @payout_preference.bank_account } }, as: :json
    assert_response 200
  end

  test "should destroy payout_preference" do
    assert_difference('PayoutPreference.count', -1) do
      delete payout_preference_url(@payout_preference), as: :json
    end

    assert_response 204
  end
end
