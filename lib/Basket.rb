class Basket
  attr_reader :food_items
  def initialize(printer=Printer.new)
    @food_items = []
    @printer = printer
  end
  def add_menu_item(food_item)
    @food_items.push(food_item)
  end
  def print_menu
    @printer.print(@food_items)
  end
end