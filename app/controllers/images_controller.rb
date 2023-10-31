class ImagesController < ApplicationController
  def create
    @image = Image.create(
      url: params["url"],
      product_id: params["product_id"],
    )
    if @image.valid?
      render json: @image
    else
      render json: { errors: @image.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @image = Image.find_by(id: params["id"])
    @image.destroy
    render json: { message: "image successfully deleted" }
  end
end
