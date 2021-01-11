class AliensController < ApplicationController
    def index
        aliens = Alien.all 
        render json: aliens 
    end
  
    def create
        alien = Alien.create(alien_params)
        if alien.valid? 
        render json: alien
        else
            render json: alien.errors, status: :unprocessable_entity
    end
    end
    private
    def alien_params
        params.require(:alien).permit(:name, :distance, :planet, :img)
    end
  
    def update
    end
  
    def destroy
    end
  
  end

