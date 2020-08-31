class Api::V1::BeachesController < ApplicationController

    skip_before_action :authorized, only: [:index]

    def index
        beaches = Beach.all #when I am dealing with views I have to pass instance variables to the view but renderin JSON don't eed instance variable can be just beach 
        #  render json: beaches
        render json: BeachSerializer.new(beaches) #render new instance of beach serializer 
    end

    def show
        beach = Beach.find_by(id: params[:id])
        render json: BeachSerializer.new(beach), status: :accepted
    end

    def create
        beach = current_user.beaches.build(beach_params)
        # beach = Beach.new(beach_params)
        if beach.save
            # byebug
            render json: BeachSerializer.new(beach), status: :accepted
        else
            render json: {errors: beach.errors.full_messages}, status: :unprocessable_entity # server undertand request and syntax of requestis correct but validations faield
        end
    end

    def update
        beach = Beach.find_by(id: params[:id])
        if beach.update(beach_params)
            render json: BeachSerializer.new(beach), status: :accepted
        else
            render json: {errors: beach.errors.full_messages}, status: :unprocessable_entity # server undertand request and syntax of requestis correct but validations faield
        end
    end

    private

    def beach_params
        params.require(:beach).permit(:name, :location, :description, :image_url, :country_id)
    end
    
end
