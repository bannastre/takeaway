class Menu

  attr_reader :items

  def initialize
    @items = {}
  end

  def add_dish(dish, price)
    @items[dish] = price
  end

end
