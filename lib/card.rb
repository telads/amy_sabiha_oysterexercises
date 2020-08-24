class Card
  LIMIT = 50
  FARE = 5
  MIN_AMOUNT = 2.50

  def initialize
    @balance = 0
  end


  def add(money)
    if @balance + money > LIMIT
      return "you've reached the limit of £50"
    else
      @balance += money
    end
  end

  def limit
    LIMIT
  end

  def deduct
    if @balance >= FARE
      return @balance - FARE
    else
      return "you don't have enough money"
    end
  end

  def touch_in(station)
    return station.name
  end

  def touch_out(station)
    return station.name
  end

  def min_amount
    if @balance >= MIN_AMOUNT
      return true
    else @balance < MIN_AMOUNT
      return "not enough money"
    end
  end

end
