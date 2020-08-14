class Api::V1::BeachesController < ApplicationController

    def index
        beaches = Beach.all #when I am dealing with views I have to pass instance variables to the view but renderin JSON don't eed instance variable can be just beach 
        render json: beaches
    end

    
end
