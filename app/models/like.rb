class Like < ApplicationRecord
    validates_uniqueness_of :user_id, :scope => [:picture_id]


    belongs_to :picture
    belongs_to :user
end
