require 'car'

describe Car do

  describe '#working?' do
    it 'states whether the car works' do
      expect(subject.working?).to be_working
    end
  end

  describe '#report_broken' do
    it 'states that the returned car is broken' do
      subject.report_broken
      expect(subject.working?).to be_falsey
    end
  end


end
