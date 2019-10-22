class User < ApplicationRecord
    
    has_many :reviews, foreign_key: :reviewer_id
    has_many :reviewees, through: :reviews, source: :reviewee

    has_many :brewques
    has_many :breweries, through: :brewqueue
    
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :city, presence: true
    validates :state, presence: true
    validates :bio, presence: true
    has_secure_password

end
