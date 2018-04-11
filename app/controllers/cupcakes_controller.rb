class CupcakesController < ApplicationController
  def index
    @cupcakes = Cupcake.order(:name).page(params[:page])
  end

  def show
    @cupcake = Cupcake.find(params[:id])
    @cupcakes = Cupcake.page(params[:page])
  end

end
