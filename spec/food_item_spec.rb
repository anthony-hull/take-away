# frozen_string_literal: true

require 'food_item'
describe FoodItem do
  subject { FoodItem.new }
  it 'has name set to Pizza' do
    subject.name = "Pizza"
    expect(subject.name).to eq('Pizza')
  end
  it 'has a price set to 300 pence' do
    expect(subject).to receive(:price=).with(300)
    subject.price = 300
  end
end
