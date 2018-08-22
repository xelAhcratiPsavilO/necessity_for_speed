require 'garage'

describe Garage do

  car = Car.new

  describe '#release_car' do
    it 'raises an error if there are no cars in the garage' do
      expect { subject.release_car }.to raise_error 'No cars available'
    end
    it 'raises an error if there the car is broken' do
      expect { subject.release_car }.to raise_error 'The car is broken'
    end
    it 'releases a car' do
      subject.park_car(car)
      expect(subject.release_car).to be_a Car
    end
  end

  describe '#park_car' do
    it 'raises an error if the garage has full capacity' do
      subject.capacity.times { subject.park_car(Car.new) }
      expect { subject.park_car(car) }.to raise_error 'No more cars allowed'
    end
    it 'parks a car' do
      expect(subject.park_car(car)).to eq [car]
    end
  end

  describe '#car' do
    it 'shows parked cars' do
      subject.park_car(car)
      expect(subject.cars).to eq [car]
    end
  end

  describe '#capacity' do
    it 'has a default capacity' do
      expect(subject.capacity).to eq Garage::DEFAULT_CAPACITY
    end
  end

end
