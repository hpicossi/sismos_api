require 'httparty'
require 'date'

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
      render json: { errors: @feature.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @feature = Feature.find(params[:id])
    render json: @feature
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Característica no encontrada' }, status: :not_found
  end

  def fetch_earthquake_data
    url = 'https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.geojson'
    response = HTTParty.get(url)

    if response.success?
      process_earthquake_data(response.parsed_response)
      render json: { status: 'success', message: 'Datos sismológicos obtenidos exitosamente.' }
    else
      render json: { status: 'error', message: 'Error al obtener los datos sismológicos.' }
    end
  end

  private

  def process_earthquake_data(data)
    data['features'].each do |feature_data|
      
      feature = Feature.new(
        external_id: feature_data['id'],
        magnitude: feature_data['properties']['mag'],
        place: feature_data['properties']['place'],
        time: Time.at(feature_data['properties']['time'] / 1000), # Convert Unix timestamp to Ruby Time
        tsunami: feature_data['properties']['tsunami'],
        mag_type: feature_data['properties']['magType'],
        title: feature_data['properties']['title'],
        longitude: feature_data['geometry']['coordinates'][0],
        latitude: feature_data['geometry']['coordinates'][1]
      )
  
      if feature.save
        Rails.logger.info("Registro guardado en la base de datos: #{feature.inspect}")
      else
        Rails.logger.error("Error al guardar el registro en la base de datos: #{feature.errors.full_messages}")
      end
    end
  end
  
  def feature_params
    params.require(:feature).permit(:external_id, :magnitude, :place, :time, :tsunami, :mag_type, :title, :longitude, :latitude)
  end
end



