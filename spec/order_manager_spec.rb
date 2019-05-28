# frozen_string_literal: true

require 'order_manager'
describe OrderManager do
  let(:order_str) { 'pizza,pizza,dog,2400' }
  let(:basket_spy) { instance_spy('Basket') }
  let(:basket_class) { double('Basket', new: basket_spy) }
  subject { OrderManager.new(basket_class) }
  it 'takes in a one line CSV string and returns an array' do
    expect(subject.parse_order(order_str)).to eq(%w[pizza pizza dog 2400])
  end
  it 'takes in a one line CSV string and stores price' do
    subject.parse_order(order_str)
    expect(subject.expected_price).to eq(2400)
  end
  pending 'sends order to OrderManager' do
    subject.parse_order(order_str)
    allow(basket_spy).to recieve(:add_options)
    expect(basket_spy).to have_received(:add_options).with(%w[pizza pizza dog])
  end
end