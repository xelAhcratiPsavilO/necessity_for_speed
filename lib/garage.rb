require_relative 'car'

class Garage

  DEFAULT_CAPACITY = 20

    attr_reader :cars
    attr_reader :capacity

  def initialize
    @cars = []
    @capacity = DEFAULT_CAPACITY
  end

  def park_car(car)
    fail 'No more cars allowed' if full?
    cars << car
  end

  def release_car
    fail 'No cars available' if empty?
    fail 'The car is broken' if cars.last.broken?
    cars.pop
  end

  private

  def full?
    cars.count >= capacity
  end

  def empty?
    cars.empty?
  end

end
