class Card
  LIMIT = 50

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


end
