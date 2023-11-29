class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      status: "carted",
      order_id: params["order_id"],
    )
    if @carted_product.valid?
      render json: { message: "Items added to cart" }
    else
      render json: { errors: @carted_product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    @carted_product = current_user.carted_products.where(status: "carted")
    render :index
  end
end
