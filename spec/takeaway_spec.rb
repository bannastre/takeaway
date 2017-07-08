require './src/takeaway.rb'

describe Takeaway do

  subject(:takeaway) { described_class.new(Menu.new({ :test_item_1 => 0.01, :test_item_2 => 0.08 })) }
  let(:menu) { double(:menu) }

  it 'can place an order' do
    expect(takeaway.add_to_order(:test_item_1, 2)).to eq(0.02)
  end

  it 'can add items to the order' do
    takeaway.add_to_order(:test_item_1, 2)
    expect(takeaway.add_to_order(:test_item_2, 1)).to eq(0.1)
  end

end
