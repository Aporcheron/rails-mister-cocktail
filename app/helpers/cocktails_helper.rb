module CocktailsHelper
  def set_cocktail_image(cocktail)
    cocktail.photo.nil? ? image_path('mojito.jpeg') : cl_image_path(cocktail.photo.path)
  end
end
