require './src/order.rb'

describe Order do

  subject(:order) { described_class.new }
  let(:menu) { double(:menu, :items => {:test_item_1 => 0.01}) }

  before(:each) { order.add_to_basket(:test_item_1, 2) }

  it 'holds some number of available dishes' do
    expect(order.view_basket).to eq(:test_item_1 => 2)
  end

end
