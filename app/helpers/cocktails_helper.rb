module CocktailsHelper
  def set_cocktail_image(cocktail)
    cocktail.photo.path.nil? ? url_image = image_path('mojito.jpeg') : url_image = cocktail.photo.path
    return url_image
  end
end
