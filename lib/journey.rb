class Journey
  # FARE = 5

  def initialize
    @journey = []
  end

  def start(station)
    @journey << station.name
  end

  def end(station)
    @journey << station.name
  end

  def complete
    @journey.length == 2
    true
  end

end
