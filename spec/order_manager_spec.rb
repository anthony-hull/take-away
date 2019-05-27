# frozen_string_literal: true
#
require 'order_manager'
describe OrderManager do
  let(:order_str) { 'pizza,pizza,dog,2400' }
  let(:basket) { instance_double('Basket', :add_options) }
  let(:basket_class) { double('Basket', new: basket) }
  subject { OrderManager.new(basket_class) }
  it 'takes in a one line CSV string and returns an array' do
    expect(subject.parse_order(order_str)).to eq(%w[pizza pizza dog 2400])
  end
  it 'takes in a one line CSV string and stores price' do
    subject.parse_order(order_str)
    expect(subject.expected_price).to eq(2400)
  end
  pending 'sends order to OrderManager' do
    expect(basket).to respond_to(:add_options)
    subject.parse_order(order_str)
  end
end