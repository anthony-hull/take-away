class FoodList
  attr_reader :food_items
  def initialize
    @food_items = []
  end
  def add_menu_item(food_item)
    @food_items.push(food_item)
  end
end