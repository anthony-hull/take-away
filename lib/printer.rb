# frozen_string_literal: true

class Printer
  def print_out(input, price = nil)
    input.each do |x|
      puts x.name
    end
    unless price.nil?
      puts "Total Price: #{price}"
    end
  end
end
