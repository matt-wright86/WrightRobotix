class ProductsController < ApplicationController
  def index
    @products = Product.all
    @cart_total = CartItem.all.map do |q| q.slice(:quantity) end
    @cisum = @cart_total.map { |h| h[:quantity] }.sum
  end

  def show
    @product = Product.find params[:id]
    @cart_total = CartItem.all.map do |q| q.slice(:quantity) end
    @cisum = @cart_total.map { |h| h[:quantity] }.sum
  end
end
