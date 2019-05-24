require 'FoodMenu'
describe FoodMenu do
  let(:pizza) { double("FoodItem") }
  subject { FoodMenu.new }
  it 'can add a FoodItem dbl to the menu' do
    expect(subject).to receive(:add_menu_item).with(pizza)
    subject.add_menu_item(pizza)
  end
  it 'can return an array with the added menu item' do
    subject.add_menu_item(pizza)
    expect(subject.food_items).to include(pizza)
  end

end