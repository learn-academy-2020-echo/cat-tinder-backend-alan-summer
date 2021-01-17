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
            render json: alien.errors, status: 422
    end
end

    def update
        alien = Alien.find(params[:id])
        alien.update(alien_params)
        if alien.valid? 
            render json: alien 
        else
            render json: alien.errors, status: 422
        end
    end
  
    def destroy
        alien = Alien.find(params[:id])
        if alien.destroy
            render json: alien 
        else 
            render json: alien.errors, status: 422
        end
    end


    private
    def alien_params
        params.require(:alien).permit(:name, :distance, :planet, :img)
    end
  

    
  
  end

