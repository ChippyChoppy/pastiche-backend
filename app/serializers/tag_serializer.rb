class TagSerializer < ActiveModel::Serializer
  attributes :id, :tag
  has_many :mocktails
end
