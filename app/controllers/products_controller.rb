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
      name: "Coffee",
      price: 2,
      img_url: "https://www.eatingwell.com/thmb/wBKeO_wzc97ngtNFph1c2Y0wHfE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/What-Happens-To-Your-Body-When-You-Drink-Coffee-Every-Day-2000-ead0e982c03b4a50a4e115f145069b8b.jpg",
      description: "full throttle",
    )
    @product.save
    render :show
  end
end
