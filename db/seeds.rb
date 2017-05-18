require 'json'
require 'open-uri'

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
h = JSON.parse(open(url).read)
h['drinks'].each do |drink|
  Ingredient.create(name: drink["strIngredient1"])
end
