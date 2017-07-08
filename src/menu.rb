class Menu

  def initialize(items = {})
    @items = items
  end

  def add_dish(dish, price)
    @items[dish] = price
  end

  def view
    @items
  end

  def view_item_price(item)
    @items[item]
  end

end
