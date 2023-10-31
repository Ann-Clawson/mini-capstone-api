class ImagesController < ApplicationController
  def destroy
    @image = Image.find_by(id: params["id"])
    @image.destroy
    render json: { message: "image successfully deleted" }
  end
end
