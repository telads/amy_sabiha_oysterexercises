require './lib/station.rb'

describe 'A station' do
  it 'has a name' do
    station = Station.new
    expect(station.name).to eq "Baker Street"
  end



  it 'has a zone' do
    station = Station.new(zone)
    expect(station.zone).to eq 1
  end
end
