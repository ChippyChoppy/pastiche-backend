class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :taste
  has_many :mocktails
end
