class UsersMocktailSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :mocktail_id, :r_and_d, :favorite
  has_many :notes
  has_many :users, through: :notes
  belongs_to :user
  belongs_to :mocktail
end
