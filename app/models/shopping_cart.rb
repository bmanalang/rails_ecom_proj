class ShoppingCart < ApplicationRecord
  def initialize(token:)
    @token = token
  end

  def order
    @order ||= Order.find_or_create_by(token: @token) do |order|
      order.sub_total = 0
    end
  end

  def add_item(cupcake_id:, quantity: 1)
    cupcake = Cupcake.find(cupcake_id)

    order_item = order.items.find_or_create_by(cupcake_id: cupcake_id)

    order_item.price = cupcake.price
    order_item.quantity = quantity

    order_item.save
  end

end
