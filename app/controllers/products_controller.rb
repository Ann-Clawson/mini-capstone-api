class ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render :index
  end

  def Pacer
    @product = Product.name("Pacer")
    render :show
  end

  def Hot_Dog
    @product = Product.name("Hot_Dog")
    render :show
  end

  def Pathos
    @product = Product.name("Pathos")
    render :show
  end

  def Soda_Pop
    @product = Product.name("Soda_Pop")
    render :show
  end

  def Bubble_Gum
    @product = Product.name("Bubble_Gum")
    render :show
  end
end
