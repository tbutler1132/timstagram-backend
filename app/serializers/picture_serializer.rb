class PictureSerializer < ActiveModel::Serializer
  attributes :id, :photo_url, :Caption, :comments

  def comments
    object.comments.collect do |comment|
      { :id => comment.id, :user => comment.user.username, :content => comment.content, :picture_id => comment.picture_id }
    end
  end

  belongs_to :user
end
