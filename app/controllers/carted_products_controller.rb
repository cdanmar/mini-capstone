class CartedProductsController < ApplicationController
  before_action :authenticate_user!
  def index
    # @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    if current_user && current_user.cart.any?
     @carted_products = current_user.cart
   else
    flash[:warning] = "Why don't you add something to your cart, dude."
    redirect_to '/'
    end
  end
  def create
    toy = Toy.find(params[:toy_id])
    carted_product = CartedProduct.new(user_id: current_user.id,
                                       toy_id: params[:toy_id],
                                       quantity: params[:quantity],
                                       status: "carted"
                                      )
    if carted_product.save
      flash[:success] = "Item added to cart"
      redirect_to "/carted_products"
    end
  end

  def destroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.update(status: "removed")
    flash[:success] = "Item removed from cart."
    redirect_to "/carted_products"
  end
end
