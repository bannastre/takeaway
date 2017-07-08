require_relative 'menu'
require_relative 'order'

class Takeaway

  def initialize(menu = Menu.new())
    @menu = menu
  end

  def add_to_order(dish, quantity)
    @order ||= Order.new(@menu)
    @order.add_to_basket(dish, quantity)
    @order.total
  end

end
