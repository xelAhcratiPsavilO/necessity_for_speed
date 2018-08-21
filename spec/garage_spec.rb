require 'garage'

describe Garage do

  it 'releases a car' do
    car = subject.release_car
    expect(car).to be_working
  end

  it { is_expected.to respond_to(:park_car).with(1).argument }
  
end
