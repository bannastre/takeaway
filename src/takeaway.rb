require_relative 'menu'
require_relative 'order'

class Takeaway

  def initialize(menu = Menu.new({:test_item_1 => 0.01}))
    @menu = menu
  end

  def new_order(dish, quantity)
    @order = Order.new(@menu)
    @order.add_to_basket(dish, quantity)
    @order.total
  end

end
