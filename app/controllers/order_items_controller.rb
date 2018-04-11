class OrderItemsController < ApplicationController
  def index
    @items = current_cart.order.items
  end

  def show
  end

  def create
    current_cart.add_item(cupcake_id: params[:cupcake_id],
                          quantity: params[:quantity])

    redirect_to cart_path
  end
end
