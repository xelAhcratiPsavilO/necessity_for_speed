require_relative 'car'

class Garage

  DEFAULT_CAPACITY = 20

  def initialize
    @cars = []
  end

  attr_reader :cars

  def park_car(car)
    fail 'No more cars allowed' if full?
    @cars << car
  end

  def release_car
    fail 'No cars available' if @cars.empty?
    @cars.pop
  end

  private

  def full?
    @cars.count >= DEFAULT_CAPACITY
  end

  def empty?
    @cars.empty?
  end

end
