# frozen_string_literal: true


describe OrderManager do
  let(:order_str) { 'pizza,pizza,dog,2400' }
  let(:order_manager_class) { double('OrderManger') }
  let(:order_manager) { instance_double('OrderManager', :food_options, :user_price) }
  it 'takes in a one line CSV string and returns an array' do
    expect(subject.parse_order(order_str)).to eq(%w[pizza pizza dog 2400])
  end
  it 'takes in a one line CSV string and stores price' do
    subject.parse_order(order_str)
    expect(subject.expected_price).to eq(2400)
  end
  it 'sends order to OrderManager' do
    expect(basket).to respond_to(:add_option)
    subject.parse_order(order_str)
  end
end