require 'garage'

describe Garage do

  it 'releases a car' do
    car = subject.release_car
    expect(car).to be_working
  end

end
