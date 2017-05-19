module CocktailsHelper
  def set_cocktail_image(cocktail)
    cocktail.photo.nil? ? asset_path('mojito.jpg') : cl_image_path(cocktail.photo.path)
  end
end
