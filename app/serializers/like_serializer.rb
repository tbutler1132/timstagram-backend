class LikeSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :user
  belongs_to :picture
end
