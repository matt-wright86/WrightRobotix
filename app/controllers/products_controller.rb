class ProductsController < ApplicationController
  def index
    @products = Product.all
    @cart = @current_user.carts.find_by completed: false
    @cisum = @cart.cart_items.map{|ci| ci.quantity}.sum
  end

  def show
    @product = Product.find params[:id]
    @cart = @current_user.carts.find_by completed: false
    @cisum = @cart.cart_items.map{|ci| ci.quantity}.sum
  end
end
