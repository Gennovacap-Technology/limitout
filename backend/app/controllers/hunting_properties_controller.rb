class HuntingPropertiesController < ApplicationController
  before_action :set_hunting_property, only: [:show, :update, :destroy]

  # GET /hunting_properties
  def index
    @hunting_properties = HuntingProperty.all

    render json: @hunting_properties
  end

  # GET /hunting_properties/1
  def show
    render json: @hunting_property
  end

  # POST /hunting_properties
  def create
    @hunting_property = HuntingProperty.new(hunting_property_params)

    if @hunting_property.save
      render json: @hunting_property, status: :created, location: @hunting_property
    else
      render json: @hunting_property.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hunting_properties/1
  def update
    if @hunting_property.update(hunting_property_params)
      render json: @hunting_property
    else
      render json: @hunting_property.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hunting_properties/1
  def destroy
    @hunting_property.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hunting_property
      @hunting_property = HuntingProperty.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hunting_property_params
      params.require(:hunting_property).permit(:description, :address, :city, :state, :acreage, :vegetation, :water_sources, :number_blinds, :blind_types, :feeders, :natural_feeders)
    end
end
