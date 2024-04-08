class FeaturesController < ApplicationController
  def index
    @features = Feature.all
    render json: @features
  end

  def create
    @feature = Feature.new(feature_params)
    if @feature.save
      render json: @feature, status: :created
    else
      render json: @feature.errors, status: :unprocessable_entity
    end
  end

  private

  def feature_params
    params.require(:feature).permit(:external_id, :magnitude, :place, :time, :tsunami, :mag_type, :title, :longitude, :latitude)
  end
end
