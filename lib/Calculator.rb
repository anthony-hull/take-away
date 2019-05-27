# frozen_string_literal: true

class Calculator
  def calculate_sum(food_items)
    food_items.reduce(0) { |sum, n| sum + n.price }
  end
end
