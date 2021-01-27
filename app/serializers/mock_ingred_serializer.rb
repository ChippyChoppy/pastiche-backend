class MockIngredSerializer < ActiveModel::Serializer
  attributes :id, :mocktail_id, :measurement_id, :ingredient_id 
  belongs_to :mocktail
  belongs_to :ingredient
  belongs_to :measurement
end
