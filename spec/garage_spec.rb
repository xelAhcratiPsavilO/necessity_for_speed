require 'garage'

describe Garage do

  it { is_expected.to respond_to :release_car }

  it 'releases a bike' do
    car = subject.release_car
    expect(car).to be_working
  end

end
