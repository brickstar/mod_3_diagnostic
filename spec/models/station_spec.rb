require 'rails_helper'

describe Station do
  it 'attributes' do
    data = {
            :access_days_time=>"24 hours daily",
            :fuel_type_code=>"ELEC",
            :station_name=>"UDR",
            :street_address=>"800 Acoma St",
            :distance=>0.31422
           }

    station = Station.new(data)

    expect(station.name).to eq("UDR")
    expect(station.fuel_types).to eq("ELEC")
    expect(station.address).to eq("800 Acoma St")
    expect(station.distance).to eq(0.31422)
    expect(station.access_times).to eq("24 hours daily")
  end
end
