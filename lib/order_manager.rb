# frozen_string_literal: true

require 'basket'
class OrderManager
  attr_reader :expected_price
  def initialize(basket_class = Basket.new)
    @basket = basket_class.new
  end

  def parse_order(input_str)
    @input = input_str.split(',')
    @expected_price = @input.last.to_i
    @input
  end
end
