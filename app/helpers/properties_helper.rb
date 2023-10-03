module PropertiesHelper
  def property_thumbnail(property)
    img = property.photo.attached? ? property.image_as_thumbnail : "cat.jpeg"
    image_tag img, class: "property-thumb"
  end
end
