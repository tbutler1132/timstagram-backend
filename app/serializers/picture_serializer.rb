class PictureSerializer < ActiveModel::Serializer
  attributes :id, :photo_url, :Caption, :comments, :likes

  def comments
    object.comments.collect do |comment|
      { :id => comment.id, :user => comment.user, :content => comment.content, :picture_id => comment.picture_id }
    end
  end

  belongs_to :user

end
