class Bus

attr_reader :route, :destination

  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []

  end

  def drive()
    return "Brum brum"
  end

  def passenger_amount
    return @passengers.length
  end

  def pick_up(passenger)
    @passengers << passenger
    # @passengers.push(passenger)
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def empty
    @passengers.clear
  end







  end
