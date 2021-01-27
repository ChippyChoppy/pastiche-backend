class MockIngredSerializer < ActiveModel::Serializer
  attributes :id, :mocktail, :measurement, :ingredient 
  # belongs_to :mocktail
  # belongs_to :ingredient
  # belongs_to :measurement
end
