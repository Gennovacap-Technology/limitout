class ExpeditionsController < ApplicationController
  before_action :set_expedition, only: [:show, :update, :destroy]

  # GET /expeditions
  def index
    @expeditions = Expedition.all

    render json: @expeditions
  end

  # GET /expeditions/1
  def show
    render json: @expedition
  end

  # POST /expeditions
  def create
    @expedition = Expedition.new(expedition_params)

    if @expedition.save
      render json: @expedition, status: :created, location: @expedition
    else
      render json: @expedition.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /expeditions/1
  def update
    if @expedition.update(expedition_params)
      render json: @expedition
    else
      render json: @expedition.errors, status: :unprocessable_entity
    end
  end

  # DELETE /expeditions/1
  def destroy
    @expedition.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expedition
      @expedition = Expedition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def expedition_params
      params.require(:expedition).permit(:title, :description, :number_of_guests, :cost, :allow_multiple_bookings_on_date)
    end
end
