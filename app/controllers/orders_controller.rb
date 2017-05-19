class OrdersController < ApplicationController
  def create
    order = Order.new(toy_id: params[:toy_id],
                      user_id: current_user.id,
                      quantity: params[:quantity]
                      tax: 
                      )
    if order.save
      redirect_to "/orders/#{order.id}" 
    end
  end
  def show
    @order = Order.find(params[:id])
  end
end
