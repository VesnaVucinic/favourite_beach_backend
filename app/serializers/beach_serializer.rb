class BeachSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :location, :description, :image_url, :country_id, :user_id, :country  #instead of country_id attribut, to see all country object that I can access to for each beach card iterate over jason data, and for each I want to desplay attributes.country.name and I can access to that relationship with one fatch call
  # belongs_to :country
end
