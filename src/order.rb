require_relative 'menu.rb'
require_relative 'notification'

class Order

  def initialize(menu = Menu.new)
    @menu = menu
    @basket = {}
  end

  def add_to_basket(dish, quantity)
    @basket[dish] = quantity
    view_basket
  end

  def view_basket
    @basket
  end

  def total
    total = 0.00
    @basket.each do |dish, quantity|
      total += @menu.view_item_price(dish) * quantity if @menu.view_item_price(dish)
    end
    total
  end

  def confirm(number)
    notification = Notification.new("Your order total is #{total}")
    send_notification(number)
  end

  private

  def send_notification(notification, number)
    notification.send(number)
  end

end
