class Api::V1::MockTagsController < ApplicationController

    def create
        mock_tag = MockTag.create(mock_tag_params)
        render json: mock_tag
    end

    def destroy
        mock_tag_array = params[:id].split(",")
        mock_tag = MockTag.find_by(mocktail_id: mock_tag_array[0], tag_id: mock_tag_array[2])
        mock_tag.delete
        render json: mock_tag
    end

    private
    def mock_tag_params
        params.permit(:mocktail_id, :tag_id)
    end
end
