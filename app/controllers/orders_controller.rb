class OrdersController < ApplicationController
  def create
    current_product = Product.find_by(id: params["product_id"])
    quantity = params["quantity"].to_d
    this_subtotal = quantity * current_product.price
    this_tax = current_product.tax * this_subtotal.to_i
    this_total = this_subtotal.to_d + this_tax.to_d

    @order = Order.new(
      user_id: current_user.id,
      product_id: current_product.id,
      quantity: quantity,
      subtotal: this_subtotal,
      tax: this_tax,
      total: this_total,
    )
    @order.save
    if @order.valid?
      render :show
    else
      render json: { errors: @order.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @order = Order.find_by(id: params["id"])
    render :show
  end

  def index
    @orders = Order.all
    render :index
    # pp current_user
  end
end
