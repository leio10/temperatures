module Api
  class MeasurementsController < ApplicationController
    deserializable_resource :measurement, only: [:create]

    def index
      render jsonapi: Measurement.all,
            fields: { measurements: [:name, :value, :created_at]}
    end

    def create
      measurement = Measurement.new(create_params)

      if measurement.save
        render jsonapi: measurement
      else
        render jsonapi_errors: measurement.errors
      end
    end

    private

    def create_params
      params.require(:measurement).permit(:name, :value)
    end
  end
end