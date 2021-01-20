class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :taste
  has_many :mocktails
  has_many :mock_ingreds
end
