require './lib/station.rb'

describe 'A station' do
  it 'has a name' do
    station = Station.new('Baker Street', 1)

    expect(station.name).to eq "Baker Street"
  end

  it 'has a zone' do
    station = Station.new('Baker Street', 1)

    expect(station.zone).to eq 1
  end
end
