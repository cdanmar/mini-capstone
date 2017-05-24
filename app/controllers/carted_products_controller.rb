class CartedProductsController < ApplicationController
  def create
    toy = Toy.find(params[:toy_id])
    calculated_subtotal = toy.price * params[:quantity].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    carted_product = CartedProduct.new(user_id: current_user.id,
                                       toy_id: params[:toy_id],
                                       quantity: params[:quantity]
                                      )

end
