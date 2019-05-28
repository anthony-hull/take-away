# frozen_string_literal: true
require 'pry-byebug'
require 'basket'
class OrderManager
  attr_reader :expected_price
  def initialize(basket_class = Basket.new)
    @basket = basket_class.new
  end

  def parse_order(input_str)
    @input = input_str.split(',')
    @expected_price = @input.last.to_i
    @order = @input[0...-1]
    send_to_basket
    @input
  end

  def send_to_basket
    @basket.add_options(@order)
  end
end
