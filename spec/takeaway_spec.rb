require './src/takeaway.rb'

describe Takeaway do

  subject(:takeaway) { described_class.new(Menu.new({ :test_item_1 => 0.01, :test_item_2 => 0.08 })) }
  let(:menu) { double(:menu) }
  let(:notification) { double(:notification) }

  it 'can show you a menu' do
    allow(menu).to receive(:view).and_return({ :test_item_1 => 0.01, :test_item_2 => 0.08 })
    expect(takeaway.view_menu).to eq(menu.view)
  end

  it 'can place an order' do
    expect(takeaway.add_to_order(:test_item_1, 2)).to eq(0.02)
  end

  before(:each) { takeaway.add_to_order(:test_item_1, 2) }

  it 'can add items to the order' do
    expect(takeaway.add_to_order(:test_item_2, 1)).to eq(0.1)
  end

  it 'can confirm an order has been placed' do

    expect{ takeaway.place_order }.to change{ takeaway.view_orders.length }.by(1)
  end

end
