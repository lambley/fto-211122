class Image < ApplicationRecord
  has_one_attached :image

  def image_url
    if image
  end
end
