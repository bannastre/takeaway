require './src/takeaway.rb'

def run_test(number)

  takeaway = Takeaway.new(Menu.new({pizza: 10}))
  takeaway.new_order
  order = takeaway.view_orders.last
  order.add_to_basket(:pizza,1)
  order.view_basket
  order.time
  order.total
  order.confirm(number)

end
