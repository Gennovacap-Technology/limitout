class IndentificationsController < ApplicationController
  before_action :set_indentification, only: [:show, :update, :destroy]

  # GET /indentifications
  def index
    @indentifications = Indentification.all

    render json: @indentifications
  end

  # GET /indentifications/1
  def show
    render json: @indentification
  end

  # POST /indentifications
  def create
    @indentification = Indentification.new(indentification_params)

    if @indentification.save
      render json: @indentification, status: :created, location: @indentification
    else
      render json: @indentification.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /indentifications/1
  def update
    if @indentification.update(indentification_params)
      render json: @indentification
    else
      render json: @indentification.errors, status: :unprocessable_entity
    end
  end

  # DELETE /indentifications/1
  def destroy
    @indentification.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indentification
      @indentification = Indentification.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def indentification_params
      params.require(:indentification).permit(:proven)
    end
end
