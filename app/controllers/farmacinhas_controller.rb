class FarmacinhasController < ApplicationController
  before_action :set_farmacinha, only: [:show, :update, :destroy]

  # GET /farmacinhas
  def index
    @farmacinhas = Farmacinha.all

    render json: @farmacinhas
  end

  # GET /farmacinhas/1
  def show
    render json: @farmacinha
  end

  # POST /farmacinhas
  def create
    @farmacinha = Farmacinha.new(farmacinha_params)

    if @farmacinha.save
      render json: @farmacinha, status: :created, location: @farmacinha
    else
      render json: @farmacinha.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /farmacinhas/1
  def update
    if @farmacinha.update(farmacinha_params)
      render json: @farmacinha
    else
      render json: @farmacinha.errors, status: :unprocessable_entity
    end
  end

  # DELETE /farmacinhas/1
  def destroy
    @farmacinha.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farmacinha
      @farmacinha = Farmacinha.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def farmacinha_params
      params.require(:farmacinha).permit(:name, :quantity, :brand, :validade)
    end
end
