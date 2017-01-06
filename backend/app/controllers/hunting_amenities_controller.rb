class HuntingAmenitiesController < ApplicationController
  before_action :set_hunting_amenity, only: [:show, :update, :destroy]

  # GET /hunting_amenities
  def index
    @hunting_amenities = HuntingAmenity.all

    render json: @hunting_amenities
  end

  # GET /hunting_amenities/1
  def show
    render json: @hunting_amenity
  end

  # POST /hunting_amenities
  def create
    @hunting_amenity = HuntingAmenity.new(hunting_amenity_params)

    if @hunting_amenity.save
      render json: @hunting_amenity, status: :created, location: @hunting_amenity
    else
      render json: @hunting_amenity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hunting_amenities/1
  def update
    if @hunting_amenity.update(hunting_amenity_params)
      render json: @hunting_amenity
    else
      render json: @hunting_amenity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hunting_amenities/1
  def destroy
    @hunting_amenity.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hunting_amenity
      @hunting_amenity = HuntingAmenity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hunting_amenity_params
      params.require(:hunting_amenity).permit(:food, :lodging, :gear, :ammo, :guns, :vehicles)
    end
end
