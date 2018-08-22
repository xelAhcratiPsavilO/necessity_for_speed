require 'car'

describe Car do

  describe '#report_broken' do
    it 'states that the returned car is broken' do
      subject.report_broken
      expect(subject).to be_broken
    end
  end


end
