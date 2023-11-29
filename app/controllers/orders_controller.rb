class OrdersController < ApplicationController
  def create
    # current_product = Product.find_by(id: params["product_id"])

    carted_products = current_user.carted_products.where(status: "carted")

    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.quantity * carted_product.product.price
    end

    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    # quantity = params["quantity"].to_i
    # calculated_subtotal = quantity * current_product.price
    # this_tax = current_product.tax * calculated_subtotal
    # this_total = calculated_subtotal + this_tax

    @order = Order.new(
      user_id: current_user.id,
      # product_id: current_product.id,
      # quantity: quantity,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )

    if @order.save?
      @carted_products.update_all(status: "purchased", order_id: @order.id)
      render :show
    else
      render json: { errors: @order.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @order = current_user.orders.find_by(id: params["id"])
    render :show
  end

  def index
    @orders = current_user.orders
    render :index
    # pp current_user
  end

  def destroy
    carted_product = current_user.carted_products.find_by(id: parmas["id"], status: "carted")
    carted_product.update(status: "removed")
    render json: { message: "Itme removed from cart"}
  end
end
