class MocktailSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :glassware, :instructions, :rating, :about, :creator
  has_many :tags
  has_many :ingredients
  has_many :measurements
  has_many :mock_ingreds
  has_many :users_mocktails 
  # has_many :users, through: :users_mocktails
end
