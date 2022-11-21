class ImagesController < ApplicationController
  def create
    @image = Image.create(image_params)
  end

  def image_params
    params.require(:image).permit(:photo)
  end
end
