class Api::V1::TagsController < ApplicationController
    
    def index
        tag = Tag.all
        render json: tag
    end

    def new
        tag = Tag.new
        render json: tag
    end

    def create
        tag = Tag.create(tag_params) 
        render json: tag
    end

    private
    def tag_params
        params.require(:tag).permit(:tag)
    end

end
