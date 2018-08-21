require_relative 'car'

class Garage

  def initialize
    @cars = []
  end

  attr_reader :car

  def park_car(car)
    fail 'No more cars allowed' if @cars.count >=20
    @cars << car
  end

  def release_car
    fail 'No cars available' if @cars.empty?
    @cars.pop
  end

end
