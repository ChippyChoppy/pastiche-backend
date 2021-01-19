class Tag < ApplicationRecord
    has_many :mock_tags, dependent: :destroy 
    has_many :mocktails, through: :mock_tags
end
