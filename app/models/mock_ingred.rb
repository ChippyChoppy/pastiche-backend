class MockIngred < ApplicationRecord
  belongs_to :mocktail
  belongs_to :measurement
  belongs_to :ingredient
end
