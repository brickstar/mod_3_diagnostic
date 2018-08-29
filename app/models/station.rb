class Station
  attr_reader :name, :fuel_types, :address, :distance, :access_times
  def initialize(data)
    @name = data[:station_name]
    @fuel_types = data[:fuel_type_code]
    @address = data[:street_address]
    @distance = data[:distance]
    @access_times = data[:access_days_time]
  end
end
