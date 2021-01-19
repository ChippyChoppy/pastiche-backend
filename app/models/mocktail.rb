class Mocktail < ApplicationRecord
    has_many :users_mocktails, dependent: :destroy
    has_many :users, through: :users_mocktails
    has_many :mock_tags, dependent: :destroy
    has_many :tags, through: :mock_tags
    has_many :mock_ingreds, dependent: :destroy
    has_many :ingredients, through: :mock_ingreds
    has_many :measurements, through: :mock_ingreds
end
