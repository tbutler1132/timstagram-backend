class FollowSerializer < ActiveModel::Serializer
  attributes :id, :follower_id, :followee_id
end
