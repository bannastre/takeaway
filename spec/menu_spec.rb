require './src/menu.rb'

describe Menu do

  subject(:menu) { described_class.new }

  before(:each) { menu.add_dish(:test_item_1, 0.01) }

  it 'displays a list of dishes with a price' do
    expect(menu.view).to eq(:test_item_1 => 0.01)
  end

  it 'returns the price of a dish' do
    expect(menu.view_item_price(:test_item_1)).to eq(0.01)
  end

end
