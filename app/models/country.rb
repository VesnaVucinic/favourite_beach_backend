class Country < ApplicationRecord
    has_many :beaches, dependent: :destroy
end
