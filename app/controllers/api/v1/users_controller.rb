class Api::V1::UsersController < ApplicationController

    def index
        user = User.all
        render json: user
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def new
        user = User.new
        render json: user
    end

    def create
        user = User.create(user_params)
        render json: user
    end

    def edit
        user = User.find(params[:id])
        render json: user
    end

    def update 
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: user
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :user_name, :image, :location, :bio, :profesh)
    end
end
