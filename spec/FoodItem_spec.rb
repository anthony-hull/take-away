require 'FoodItem'
describe FoodItem do
  subject { FoodItem.new }
  it 'has name set to Pizza' do
      expect(subject).to receive(:name=).with('Pizza')
      subject.name = 'Pizza'
  end
end