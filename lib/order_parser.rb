class OrderParser
  attr_reader :expected_price
  def parse_order(input_str)
    @input = input_str.split(',')
    @expected_price = @input.last.to_i
    @input
  end
end
