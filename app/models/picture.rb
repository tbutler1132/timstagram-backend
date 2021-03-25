class Picture < ApplicationRecord
    belongs_to :user
    
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy


    validates :photo_url, presence: true
end
