class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :image, :location, :bio, :profesh
  has_many :notes
  has_many :users_mocktails, through: :notes

  has_many :mocktails, through: :users_mocktail
end
