class Property < ApplicationRecord
  has_one_attached :photo
  belongs_to :user

  def image_as_thumbnail
    return unless photo.content_type.in?(%w[image/jpeg image/png image/jpg])
    photo.variant(resize_to_limit: [400, 400]).processed
  end
end
