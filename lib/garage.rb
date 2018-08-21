require_relative 'car'

class Garage

  attr_reader :car

  def park_car(car)
    fail 'No more cars allowed' if @car
    @car = car
  end

  def release_car
    fail 'No cars available' unless @car
    Car.new
  end

end
