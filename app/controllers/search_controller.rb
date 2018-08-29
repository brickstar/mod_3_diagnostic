class SearchController < ApplicationController
  def index
    response = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1.json?location=80203?fuel_type=LPG,ELEC&radius=6&limit=10&api_key=UFGTdkhcnf13xrn7OfWD6SxHAe9COpOICg9CIAUu&format=JSON")

    raw_stations = JSON.parse(response.body, symbolize_names: true)

    @stations = raw_stations.map do |raw_station|
      Station.new(raw_station)
    end
  end
end
