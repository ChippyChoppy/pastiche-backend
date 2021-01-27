class Api::V1::MeasurementsController < ApplicationController

    def new
        measurement = Measurement.new
        render json: measurement
    end
    
    def create
        measurement = Measurement.create(measurement_params)
        render json: measurement
    end

    private
    def measurement_params
        params.require(:measurement).permit(:imperial, :metric)
    end

end
