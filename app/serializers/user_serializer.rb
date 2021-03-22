class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :profile_photo_url

  has_many :pictures
  has_many :followers
  has_many :followees
end
