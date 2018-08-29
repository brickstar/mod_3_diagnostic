class Presenter
  def initialize(zip)
    @zip = zip
  end

  def service
    NrelService.new(@zip)
  end

  def stations
    service.raw_stations.map do |raw_station|
      Station.new(raw_station)
    end
  end
end
