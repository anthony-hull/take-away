# frozen_string_literal: true

require 'calculator'
describe Calculator do
  subject { Calculator.new }
  let(:pizza) { double('FoodItem', price: 1000) }
  let(:burger) { double('FoodItem', price: 900) }
  let(:dog) { double('FoodItem', price: 400) }

  it 'takes a food item and returns the price' do
    expect(subject.calculate_sum([pizza])).to eq(1000)
  end
  it 'takes 3 food items and returns the sum of the cost' do
    expect(subject.calculate_sum([pizza, burger, dog])).to eq(2300)
  end
end
