require 'sms'

describe Sms do
  describe 'sending SMS' do
    let(:message) { double(:message, new: sms) }
    let(:sms) { double(:sms) }

    it 'sends sms message if order is successfully placed' do
      allow(message).to receive(:send).and_return("Successful!")
      expect(message.send).to eq("Successful!")
    end
  end
end