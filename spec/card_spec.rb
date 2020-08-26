require './lib/card.rb'

describe 'A card' do
  it 'can add money(10)' do
    # set up
    card = Card.new
    # verify
      expect(card.add(10)).to eq 10
  end

  it 'totals money added (15)' do
    # set up
    card = Card.new
    card.add(10)
    # verify
      expect(card.add(5)).to eq 15
  end

  # it 'totals money added (60)' do
  #   # set up
  #   card = Card.new
  #   card.add(20)
  #   # verify
  #     expect(card.add(20)).to eq 60
  # end

  it 'I want my balance to be 50' do
    # set up
    card = Card.new
    card.add(15)
    # verify
      expect(card.add(35)).to eq 50
  end

  it 'goes over the limit' do
    # set up
    card = Card.new
    card.add(50)
    # verify
      expect(card.add(5)).to eq "you've reached the limit of £50"
  end



  # it 'totals money added (50)' do
  #   # set up
  #   card = Card.new
  #   card.add(10)
  #   # verify
  #     expect(card.add(5)).to eq 50
  # end
  #
  #
  # it 'totals money added (60)' do
  #   # set up
  #   card = Card.new
  #   card.add(10)
  #   # verify
  #     expect(card.add(50)).to eq "you've reached the limit of £50"
  # end

  it 'sets a limit on the card' do
    card = Card.new

    # verify
    expect(card.limit).to eq 50
  end

  it 'has reached a limit' do
    card = Card.new
    expect(card.add(51)).to eq "you've reached the limit of £50"
  end

  it 'deducts my fare' do
    # set up
    card = Card.new
    card.add(10)

    expect(card.deduct).to eq 5
  end

  it 'deducts my fair test 2' do
    card = Card.new
    card.add(4)
    expect(card.deduct).to eq "you don't have enough money"
  end

  it 'touches in' do
    # set up
    card = Card.new
    station = test_double("Picadilly")
    # execute
    allow(station).to receive(:name) {"Picadilly"}
    # verify
    expect(card.touch_in(station)).to eq "Picadilly"
  end

  it 'touches out' do
    # set up
    card = Card.new
    station = test_double("Brixton")
    # execute
    allow(station).to receive(:name) {"Brixton"}
    # verify
    expect(card.touch_out(station)).to eq "Brixton"
  end

  # it 'sets a minimum amount' do
  #   card = Card.new
  #   # verify
  #   expect(card.min_amount).to eq true
  # end

  it 'checks for the minimum amount 3' do
    card = Card.new
    card.add(3)
    expect(card.min_amount).to eq true
  end

  it 'checks for the minimum amount 2' do
    card = Card.new
    card.add(2)
    expect(card.min_amount).to eq "not enough money"
  end

  it 'checks for the minimum amount 2.50' do
    card = Card.new
    card.add(2.50)
    expect(card.min_amount).to eq true
  end

  # it 'deducts money when a journey is complete' do
  #   card = Card.new
  #   station = test_double("Picadilly")
  #   card.touch_in(station)
  #   station = test_double("Brixton")
  #   card.touch_out(station)
  #   allow(station).to receive(:name, :name) {"Picadilly", "Brixton"}
  #   # verify
  #   expect(card.deduct(5)).to eq 0
  # end

end
