class User < ApplicationRecord
    has_secure_password
    has_many :listings
    validates :email, presence: true
    validates :email, uniqueness: true
end
