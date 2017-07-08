require './src/takeaway.rb'

describe Takeaway do

  subject(:takeaway) { described_class.new }
  let(:menu) { double(:menu, :items => {:test_item_1 => 0.01}) }

  it 'can place an order' do
    expect(takeaway.new_order(:test_item_1, 2)).to eq(:test_item_1 => 2)
  end

  it 'returns the total price of current ordered items' do
    takeaway.new_order(:test_item_1, 2)
    allow(menu).to receive(:view_item_price).and_return(0.01)
    expect(takeaway.current_order_total).to eq(0.02)
  end


end
