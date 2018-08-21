require 'garage'

describe Garage do

  car = Car.new

  describe '#release_car' do
    it 'raises an error if there are no cars in the garage' do
      expect { subject.release_car }.to raise_error 'No cars available'
    end
    it 'releases a car' do
      subject.park_car(car)
      expect(subject.release_car).to be_working
    end
  end

  describe '#park_car' do
    it 'raises an error if the garage has full capacity' do
      20.times { subject.park_car(Car.new) }
      expect { subject.park_car(car) }.to raise_error 'No more cars allowed'
    end
    it 'parks a car' do
      expect(subject.park_car(car)).to eq car
    end
  end

  describe '#car' do
    it 'shows parked cars' do
      subject.park_car(car)
      expect(subject.car).to eq car
    end
  end

end
