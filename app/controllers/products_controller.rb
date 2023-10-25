class ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render :index
  end

  def products
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def create
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      img_url: params["img_url"],
      description: params["description"],
    )
    @product.save
    render :show
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.update(
      name: params["name"] || @product.name,
      price: params["price"] || @product.price,
      img_url: params["img_url"] || @product.img_url,
      description: params["description"] || @product.description,
    )
    render :show
  end

  def destroy
    @product = Product.find_by(id: params["id"])
    @product.destroy
    render json: { message: "recipe successfully deleted" }
  end
end
