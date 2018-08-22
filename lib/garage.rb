require_relative 'car'

class Garage

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
    @cars.count >= 20
  end

  def empty?
    @cars.empty?
  end

end
