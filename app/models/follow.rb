class Follow < ApplicationRecord
    validates_uniqueness_of :follower_id, :scope => [:followee_id]

    belongs_to :follower, class_name: 'User'
    belongs_to :followee, class_name: 'User'
end
