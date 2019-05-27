# frozen_string_literal: true

require 'order_parser'
describe OrderParser  do
  let(:order_str) {'pizza,pizza,dog,2400'}
  it 'takes in a one line CSV string and returns an array' do
    expect(subject.parse_order(order_str)).to eq(%w[pizza pizza dog 2400])
  end
  it 'takes in a one line CSV string and stores price' do
    subject.parse_order(order_str)
    expect(subject.expected_price).to eq(2400)
  end
end