class Api::V1::BeachesController < ApplicationController

    def index
        beaches = Beach.all #when I am dealing with views I have to pass instance variables to the view but renderin JSON don't eed instance variable can be just beach 
        #  render json: beaches
        render json: BeachSerializer.new(beaches) #render new instance of beach serializer 
    end

    def create
        beach = Beach.new(beach_params)
          #byebug
        if beach.save
            render json: BeachSerializer.new(beach), status: :accepted
        else
            render json: {errors: beach.errors.full_messages}, status: :unprocessible_entity # server undertand request and syntax of requestis correct but validations faield
        end
    end

    private

    def beach_params
        params.require(:beach).permit(:name, :location, :description, :image_url, :country_id)
    end
    
end
