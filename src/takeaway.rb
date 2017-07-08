require_relative 'menu'
require_relative 'order'
require_relative 'notification'

class Takeaway

  def initialize(menu = Menu.new())
    @menu = menu
    @orders = {}
  end

  def view_menu
    @menu.view
  end

  def view_orders
    @orders
  end

  def add_to_order(dish, quantity)
    @current_order ||= Order.new(@menu)
    @current_order.add_to_basket(dish, quantity)
    @current_order.total
  end

  def place_order
    @orders[@current_order.view_basket] = @current_order.total
  end

  def notify_customer(order)
    message = "Thanks for your custom. Your order total is #{order.total}"
    notification = Notification.new(message)
  end

end
