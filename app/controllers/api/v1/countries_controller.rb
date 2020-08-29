class Api::V1::CountriesController < ApplicationController
    skip_before_action :authorized

    def index
        countries = Country.all
        # render json: countries
         render json: CountrySerializer.new(countries)
    end

end
