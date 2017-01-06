class PayoutPreferencesController < ApplicationController
  before_action :set_payout_preference, only: [:show, :update, :destroy]

  # GET /payout_preferences
  def index
    @payout_preferences = PayoutPreference.all

    render json: @payout_preferences
  end

  # GET /payout_preferences/1
  def show
    render json: @payout_preference
  end

  # POST /payout_preferences
  def create
    @payout_preference = PayoutPreference.new(payout_preference_params)

    if @payout_preference.save
      render json: @payout_preference, status: :created, location: @payout_preference
    else
      render json: @payout_preference.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /payout_preferences/1
  def update
    if @payout_preference.update(payout_preference_params)
      render json: @payout_preference
    else
      render json: @payout_preference.errors, status: :unprocessable_entity
    end
  end

  # DELETE /payout_preferences/1
  def destroy
    @payout_preference.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payout_preference
      @payout_preference = PayoutPreference.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def payout_preference_params
      params.require(:payout_preference).permit(:bank_account)
    end
end
