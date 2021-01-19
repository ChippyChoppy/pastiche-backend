class Measurement < ApplicationRecord
    has_many :mock_ingreds, dependent: :destroy
    has_many :mocktails, through: :mock_ingreds
end
