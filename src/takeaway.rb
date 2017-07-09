require_relative 'menu'
require_relative 'order'

class Takeaway

  def initialize(menu = Menu.new())
    @menu = menu
    @orders = []
  end

  def view_menu
    @menu.view
  end

  def view_orders
    @orders
  end

  def new_order
    @orders << Order.new(@menu)
  end

end
