class OrdersController < ApplicationController
  def create
    @order = Order.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:quantity],
      tax: params[:tax],
      total: params[:total],
    )
    @order.save
  end

  def show
    @order = Product.find_by(id: params["id"])
    render :show
  end
end