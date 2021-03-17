class Picture < ApplicationRecord
    belongs_to :user
    
    has_many :comments


    validates :photo_url, presence: true
end
