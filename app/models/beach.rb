class Beach < ApplicationRecord
  belongs_to :country
  belongs_to :user

  validates :name, :location, :description, :country_id, :image_url  presence: true

end
