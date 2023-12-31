class User < ApplicationRecord
    before_save { 
        email.downcase! 
    }

    has_secure_password

    validates :name,  presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
        format: { with: VALID_EMAIL_REGEX },
        uniqueness: true
    validates :password, presence: true, length: { minimum: 8 }
    validates :password_confirmation, presence: true, length: { minimum: 8 }
end
