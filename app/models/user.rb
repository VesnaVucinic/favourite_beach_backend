class User < ApplicationRecord
    has_secure_password

    has_many :beaches, dependent: :destroy


    validates :email, presence: true
    validates :email, uniqueness: { case_sensitive: false }
end
