module PropertiesHelper
  def property_thumbnail(property)
    img = property.photo.attached? ? property.image_as_thumbnail : "cat.jpeg"
    image_tag img, class: "property-thumb"
  end

  def property_photo_url(property)
    property.photo.attached? ? property.image_as_thumbnail : asset_url("cat.jpeg")
  end
end
