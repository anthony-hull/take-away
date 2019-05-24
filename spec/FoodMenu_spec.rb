require 'FoodMenu'
describe FoodMenu do

  let(:printer_spy) { spy('printer') }
  subject { FoodMenu.new(printer_spy) }

  describe 'internal methods' do

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
    it 'can call print class to print menu' do
      subject.print_menu
      expect(printer_spy).to have_received(:print).with(subject.food_items)
    end

  end
end