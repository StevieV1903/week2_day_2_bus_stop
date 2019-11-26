require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')

class BusTest < Minitest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
    @passenger = Person.new("Mike", 29)
    @passenger2 = Person.new("James", 50)

    @passengers = [@passenger, @passenger2]
  end

  def test_can_get_bus_route
    assert_equal(22, @bus.route)
  end

  def test_can_get_bus_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_drive_return
    assert_equal("Brum brum", @bus.drive)
  end

  def test_how_many_passengers_on_bus
    assert_equal(0, @bus.passenger_amount)
  end

  def test_can_pick_up_passenger
    @bus.pick_up(@passenger)
    assert_equal(1, @bus.passenger_amount)
  end

  def test_can_drop_off_passenger
    @bus.pick_up(@passengers)
    @bus.drop_off(@passenger2)
    assert_equal(1, @bus.passenger_amount)
  end

  def test_is_bus_empty
    @bus.pick_up(@passengers)
    @bus.empty()
    assert_equal(0, @bus.passenger_amount)
  end



end
