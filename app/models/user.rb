class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :city, presence: true
    validates :state, presence: true
    validates :bio, presence: true

    has_secure_password


end
