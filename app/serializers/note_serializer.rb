class NoteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :users_mocktail_id, :note
  belongs_to :user
  belongs_to :users_mocktail
end
