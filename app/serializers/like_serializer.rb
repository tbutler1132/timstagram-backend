class LikeSerializer < ActiveModel::Serializer
  attributes :id, :picture, :user_id, :picture_id

  belongs_to :user
  belongs_to :picture
end
