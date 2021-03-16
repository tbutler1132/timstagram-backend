class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :profile_photo_url

  has_many :pictures
end
