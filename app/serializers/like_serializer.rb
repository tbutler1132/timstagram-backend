class LikeSerializer < ActiveModel::Serializer
  attributes :id, :picture

  belongs_to :user
  belongs_to :picture
end
