class MessageSerializer < ActiveModel::Serializer
  attributes :id, :message, :created_at, :user_id
  has_one :user, embed_in_root: true
end
