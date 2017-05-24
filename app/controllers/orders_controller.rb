class OrdersController < ApplicationController
  def create
    toy = Toy.find(params[:toy_id])
    calculated_subtotal = toy.price * params[:quantity].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    order = Order.new(toy_id: params[:toy_id],
                      user_id: current_user.id,
                      quantity: params[:quantity],
                      subtotal: calculated_subtotal,
                      tax: calculated_tax,
                      total: calculated_total
                      )
    if order.save
      redirect_to "/orders/#{order.id}" 
    end
  end
  def show
    @order = Order.find(params[:id])
  end
end
