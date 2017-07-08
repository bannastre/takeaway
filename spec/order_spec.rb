require './src/order.rb'

describe Order do

  subject(:order) { described_class.new }

  it 'holds some number of available dishes' do
    order.add_to_basket(:test_item_1, 2)
    expect(order.view_basket).to eq(:test_item_1 => 2)
  end

end
