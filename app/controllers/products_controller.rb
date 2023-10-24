class ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render :index
  end

  def pacer
    @product = Product.first
    render :show
  end

  def hot_dog
    @product = Product.second
    render :show
  end

  def pathos
    @product = Product.third
    render :show
  end

  def soda_pop
    @product = Product.fourth
    render :show
  end

  def bubble_gum
    @product = Product.fifth
    render :show
  end
end
