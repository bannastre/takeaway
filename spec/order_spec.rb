require './src/order.rb'
require_relative '../api_keys.rb'

describe Order do

  let(:menu) { double(:menu, :items => { :test_item_1 => 0.01 }) }
  subject(:order) { described_class.new(menu) }

  before(:each) { order.add_to_basket(:test_item_1, 2) }

  it 'holds some number of available dishes' do
    expect(order.view_basket).to eq(:test_item_1 => 2)
  end

  before(:each) { allow(menu).to receive(:view_item_price).and_return(0.01) }

  it 'knows the total for the items in the basket' do
    expect(order.total).to eq(0.02)
  end

  it 'can send an order confirmation' do
    expect(order).to receive(:send_notification)
    order.confirm(TO)
  end

  it 'knows when orders are created' do
    expect(order.time).to match(Time.now.strftime "%H:%M")
  end

end
