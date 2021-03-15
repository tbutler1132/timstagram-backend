class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :profile_photo_url
end
