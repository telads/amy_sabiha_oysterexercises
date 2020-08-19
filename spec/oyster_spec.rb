require './lib/oyster.rb'

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

end
