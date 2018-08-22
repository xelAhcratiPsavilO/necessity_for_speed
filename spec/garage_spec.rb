require 'garage'

describe Garage do

  describe '#release_car' do
    it 'raises an error if there are no cars in the garage' do
      expect { subject.release_car }.to raise_error 'No cars available'
    end
    it 'raises an error if there the car is broken' do
      car = double(:car)
      allow(car).to receive(:broken?).and_return(true)
      subject.park_car(car)
      expect { subject.release_car }.to raise_error 'The car is broken'
    end
    it 'releases a car' do
      car = double(:car)
      allow(car).to receive(:broken?).and_return(false)
      subject.park_car(car)
      expect(subject.release_car).to be car
    end
  end

  describe '#park_car' do
    it 'raises an error if the garage has full capacity' do
      car = double(:car)
      subject.capacity.times { subject.park_car(car) }
      expect { subject.park_car(car) }.to raise_error 'No more cars allowed'
    end
    it 'parks a car' do
      car = double(:car)
      expect(subject.park_car(car)).to eq [car]
    end
  end

  describe '#car' do
    it 'shows parked cars' do
      car = double(:car)
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
