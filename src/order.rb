require_relative 'menu.rb'

class Order

  def initialize
    @basket = {}
  end

  def add_to_basket(dish, quantity)
    @basket[dish] = quantity
    view_basket
  end

  def view_basket
    @basket
  end

end
