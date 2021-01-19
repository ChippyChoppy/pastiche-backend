class Api::V1::IngredientsController < ApplicationController

    def index
        ingredient = Ingredient.all 
        render json: ingredient 
    end
    
    def new
        ingredient = Ingredient.new
        render json: ingredient
    end
   
    def create
        ingredient = Ingredient.create(ingredient_params)
        render json: ingredient
    end

    private
    def ingredient_params
        params.require(:ingredient).permit(:name, :taste)
    end

end
