class Api::V1::UsersMocktailsController < ApplicationController

    def index
        users_mocktail = UsersMocktail.all
        render json: users_mocktail
    end

    def show
        users_mocktail = UsersMocktail.find(params[:id])
        render json: users_mocktail
    end

    def new
        users_mocktail = UsersMocktail.new
        render json: users_mocktail
    end

    def create
        users_mocktail = UsersMocktail.create(users_mocktail_params)
        render json: users_mocktail
    end

    def edit
        users_mocktail = UsersMocktail.find(params[:id])
        render json: users_mocktail
    end

    def update 
        users_mocktail = UsersMocktail.find(params[:id])
        users_mocktail.update(users_mocktail_params)
        render json: users_mocktail
    end

    def destroy
        users_mocktail = UsersMocktail.find(params[:id])
        users_mocktail.destroy
        render json: users_mocktail
    end

    private
    def users_mocktail_params
        params.require(:users_mocktail).permit(:user_id, :mocktail_id, :r_and_d, :favorite)
    end
end
