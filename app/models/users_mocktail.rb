class UsersMocktail < ApplicationRecord
  belongs_to :user
  belongs_to :mocktail
  has_many :notes, dependent: :destroy
  has_many :users, through: :notes
end
