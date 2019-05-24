require 'Basket'
describe Basket do
  let(:printer_spy) { spy('printer') }
  let(:calculator_spy) { spy('calculator') }
  subject { Basket.new(printer_spy,calculator_spy) }

  describe 'Adding Items' do

    let(:pizza) { double("FoodItem") }

    it 'can add a FoodItem dbl to the menu' do
      expect(subject).to receive(:add_menu_item).with(pizza)
      subject.add_menu_item(pizza)
    end

    it 'can return an array with the added menu item' do
      subject.add_menu_item(pizza)
      expect(subject.food_items).to include(pizza)
    end

    it 'has 5 menu items after adding 5 items' do
      5.times{ subject.add_menu_item(pizza) }
      expect(subject.food_items.count).to eq(5)
    end

  end

  describe 'printing' do
    it 'can call print class to print basket' do
      subject.print_menu
      expect(printer_spy).to have_received(:print).with(subject.food_items)
    end
    describe '::calculate' do
      it 'can call calculator for the price total of the basket' do
        subject.total_cost
        expect(calculator_spy).to have_received(:calculate).with(subject.food_items)
      end
    end
  end
end