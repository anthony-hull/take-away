# frozen_string_literal: true

require 'printer'
describe Printer do
  let(:pizza) { double('FoodItem', price: 1000, name: 'Pizza') }
  let(:burger) { double('FoodItem', price: 900, name: 'Burger') }
  let(:dog) { double('FoodItem', price: 400 , name: 'Dog') }
  let(:the_price) { 2300 }
  it 'prints out all food items in array and price' do
    expect { subject.print_out([pizza, burger, dog], the_price) }.to output("Pizza\nBurger\nDog\nTotal Price: 2300\n").to_stdout
  end
  it 'prints out all food items in array' do
    expect { subject.print_out([pizza, burger, dog]) }.to output("Pizza\nBurger\nDog\n").to_stdout
  end
end
