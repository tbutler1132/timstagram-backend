class PictureSerializer < ActiveModel::Serializer
  attributes :id, :photo_url

  belongs_to :user
end
