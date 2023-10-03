class Property < ApplicationRecord
  has_one_attached :photo
  belongs_to :user

  def image_as_thumbnail
    return unless photo.content_type.in?(%w[image/jpeg image/png image/jpg])
    photo.variant(resize_to_fill: [400, 267]).processed
  end
end
