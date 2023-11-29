class CartedProductsController < ApplicationController
  def create
    @carted_product = Carted_Product.create(
      user_id: params["user_id"],
      product_id: params["integer"],
      quantity: params["quantity"],
      status: params["status"],
      order_id: params["order_id"]
      )
    if @carte_product.valid?
      render :show
    else
      render json: { errors: @carted_product.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
