require 'httparty'

class FeaturesController < ApplicationController
  def index
    @features = Feature.all
    render json: @features
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
        time: Time.at(feature_data['properties']['time'] / 1000),
        tsunami: feature_data['properties']['tsunami'],
        mag_type: feature_data['properties']['magType'],
        title: feature_data['properties']['title'],
        longitude: feature_data['geometry']['coordinates'][0],
        latitude: feature_data['geometry']['coordinates'][1]
      )
      feature.save
    end
  end
end

