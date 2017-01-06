class AnimalsController < ApplicationController
  before_action :set_game, only: [:show, :update, :destroy]

  # GET /games
  def index
    @animals = Animal.all

    render json: @animals
  end

  # GET /games/1
  def show
    render json: @animal
  end

  # POST /games
  def create
    @animal = Animal.new(game_params)

    if @animal.save
      render json: @animal, status: :created, location: @animal
    else
      render json: @animal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    if @animal.update(game_params)
      render json: @animal
    else
      render json: @animal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /games/1
  def destroy
    @animal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @animal = Animal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_params
      params.require(:game).permit(:game_type, :quality, :abundance, :number_animals)
    end
end
