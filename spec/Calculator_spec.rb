require 'calculator'
describe Calculator do

  subject { Calculator.new }
  let(:pizza) { double("FoodItem") }

  it 'takes a food item' do
    expect(subject).to receive(:calculate).with(pizza)
    subject.calculate(pizza)
  end

end