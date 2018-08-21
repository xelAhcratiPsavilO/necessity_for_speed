require_relative 'car'

class Garage

  attr_reader :car

  def release_car
    fail 'No cars available' unless @car
    Car.new
  end

  def park_car(car)
    @car = car
  end

end
