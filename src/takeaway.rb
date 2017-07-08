require_relative 'menu'
require_relative 'order'

class Takeaway

  def initialize(menu = Menu.new({:test_item_1 => 0.01}))
    @menu = menu
  end

  def new_order(dish, quantity, order = Order.new)
    @order = order
    @order.add_to_basket(dish, quantity)
  end

  def current_order_total
    total = 0.00
    @order.view_basket.each do |dish, quantity|
        total += @menu.view_item_price(dish) * quantity
    end
    total
  end

end
