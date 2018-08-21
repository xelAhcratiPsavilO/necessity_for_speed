require_relative 'car'

class Garage

  def release_car
    Car.new
  end

  def park_car(car)
    @car = car
  end

  def car
    @car
  end

end
