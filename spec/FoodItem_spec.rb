require 'FoodItem'
describe FoodItem do
  subject { FoodItem.new }
  it 'has name set to Pizza' do
    expect(subject).to receive(:name=).with('Pizza')
    subject.name = 'Pizza'
  end
  it 'has a price set to 300 pence' do
    expect(subject).to receive(:price=).with(300)
    subject.price = 300
  end
end