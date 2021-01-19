class Api::V1::MockIngredsController < ApplicationController
    
    def create
        mock_ingred = MockIngred.create(mock_ingred_params)
        render json: mock_ingred
    end

    def destroy
        mock_ingred_array = params[:id].split(",")
        mock_ingred = MockIngred.find_by(mocktail_id: mock_ingred_array[0], measurement_id: mock_ingred_array[1], ingredient_id: mock_ingred_array[2])
        mock_ingred.delete
        render json: mock_ingred
    end

    private
    def mock_ingred_params
        params.require(:mock_ingred).permit(:mocktail_id, :measurement_id, :ingredient_id)
    end
end
