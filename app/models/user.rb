class User < ApplicationRecord
    has_secure_password

    has_many :beaches, dependent: :destroy


    validates_presence_of :email
    validates :email, uniqueness: { case_sensitive: false }
end
