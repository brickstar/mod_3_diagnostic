class SearchController < ApplicationController
  def index
    response = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?limit=10&radius=6&location=80203&fuel_type=ELEC,LPG&api_key=UFGTdkhcnf13xrn7OfWD6SxHAe9COpOICg9CIAUu")

    raw_stations = JSON.parse(response.body, symbolize_names: true)[:fuel_stations]

    @stations = raw_stations.map do |raw_station|
      Station.new(raw_station)
    end
  end
end
