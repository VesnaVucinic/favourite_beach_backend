class Api::V1::CountriesController < ApplicationController

    def index
        countries = Country.all
        render json: countries
        #render json: CountrySerializer.new(countries)
    end

end
