require './src/takeaway.rb'

describe Takeaway do

  subject(:takeaway) { described_class.new(Menu.new({ :test_item_1 => 0.01, :test_item_2 => 0.08 })) }
  let(:menu) { double(:menu) }

  it 'can show you a menu' do
    allow(menu).to receive(:view).and_return({ :test_item_1 => 0.01, :test_item_2 => 0.08 })
    expect(takeaway.view_menu).to eq(menu.view)
  end

  it 'can place a new order' do
    expect { takeaway.new_order }.to change { takeaway.view_orders.length }.by(1)
  end

  it 'knows all orders requested of the takeaway' do
    test_order = takeaway.new_order
    expect(takeaway.view_orders).to eq(test_order)
  end

end
