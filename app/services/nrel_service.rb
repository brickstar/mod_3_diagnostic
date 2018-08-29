class NrelService
  def initialize(zip)
    @zip = zip
  end

  def get_json
    Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?limit=10&radius=6&location=#{@zip}&fuel_type=ELEC,LPG&api_key=#{ENV["NREL_KEY"]}")
  end

  def raw_stations
    JSON.parse(get_json.body, symbolize_names: true)[:fuel_stations]
  en
end
