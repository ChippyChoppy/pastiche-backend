class Api::V1::MocktailsController < ApplicationController

    def index
        mocktail = Mocktail.all
        render json: mocktail
    end

    def show
        mocktail = Mocktail.find(params[:id])
        render json: mocktail
    end

    def new
        mocktail = Mocktail.new
        render json: mocktail
    end

    def create
        mocktail = Mocktail.create(mocktail_params)
        render json: mocktail
    end

    def edit
        mocktail = Mocktail.find(params[:id])
        render json: mocktail
    end

    def update 
        mocktail = Mocktail.find(params[:id])
        mocktail.update(mocktail_params)
        render json: mocktail
    end

    def destroy
        mocktail = Mocktail.find(params[:id])
        mocktail.destroy
        render json: mocktail
    end

    private
    def mocktail_params
        params.permit(:name, :image, :glassware, :instructions, :rating, :about, :creator)
    end
end