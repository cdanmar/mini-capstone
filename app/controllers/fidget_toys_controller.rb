class FidgetToysController < ApplicationController
  def index
    @toys = Toy.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discounted = params[:discount]
    search_term = params[:search_term]
    category = params[:category]

    if category
      @toys = Category.find_by(name: category).toys
    end

    if search_term
      @toys = @toys.where("name iLIKE ? OR description iLIKE ?", "%#{search_term}", "%#{search_term}")
    end

    if discounted
      @toys = @toys.where("price < ?", discount)
    end

    if sort_attribute && sort_order
      @toys = @toys.order(sort_attribute => sort_order)
    elsif sort_attribute
      @toys = @toys.order(sort_attribute)
    end
  end


  def show
    @toy = Toy.find(params[:id])
    # toy_id = params[:id]
    # @toy = Toy.find_by(id: toy_id)
  end


  def new

  end

  def create
    toy = Toy.new(name: params[:name], description: params[:description], price: params[:price], supplier_id: params[:supplier][:supplier_id])
    toy.save
    flash[:success] = "Toy Succesfully Created"
    redirect_to "/toys/#{ toy.id }"
  end

  def edit
    @toy = Toy.find(params[:id])
  end

  def update
    toy = Toy.find(params[:id])
    toy.assign_attributes(name: params[:name], description: params[:description], price: params[:price])
    toy.save
    flash[:success] = "Toy Succesfully Updated"
    redirect_to "/toys/#{toy.id}"
  end

  def destroy
    toy = Toy.find(params[:id])
    toy.destroy
    flash[:warning] = "Toy Destroyed"
    redirect_to "/"
  end

  def random
    product = Product.all.sample
    redirect_to "/toys/#{toy.id}"
  end
end


#fidget_toys_controller.rb