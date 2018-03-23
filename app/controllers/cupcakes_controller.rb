class CupcakesController < ApplicationController
  def index
    @cupcakes = Cupcake.order(:name)
  end

  def show
    @cupcake = Cupcake.find(params[:id])
  end
end
