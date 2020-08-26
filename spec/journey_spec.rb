require './lib/journey.rb'

describe 'A Journey' do
  it 'has a start point' do
    # set up
    journey = Journey.new
    station = test_double("Stratford")
    # execute
    allow(station).to receive(:name) {"Stratford"}
    # verify
    expect(journey.start(station)).to eq ["Stratford"]
  end

  it 'has an end point' do
    # set up
    journey = Journey.new
    station = test_double("Bank")
    # execute
    allow(station).to receive(:name) {"Bank"}
    # verify
    expect(journey.end(station)).to eq ["Bank"]
  end

  it 'checks if the journey is complete' do
    journey = Journey.new

    journey.complete

    expect(journey.complete).to eq true
  end

  it 'deducts the fare when the journey is complete' do
    journey = Journey.new
    card = Card.new
    card.add(10)

    expect(card.deduct).to eq 5
  end



end
