# frozen_string_literal: true

class Basket
  attr_reader :food_items
  def initialize(printer = Printer.new, calculator = Calculator.new)
    @food_items = []
    @printer = printer
    @calculator = calculator
  end

  def add_menu_item(food_item)
    @food_items.push(food_item)
  end

  def print_menu
    @printer.print(@food_items)
  end

  def total_cost
    @calculator.calculate(@food_items)
  end

  def add_options
    
  end
end
