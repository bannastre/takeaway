require './src/menu.rb'

describe Menu do

  subject(:menu) { described_class.new }

  it 'holds a dish with a price' do
    menu.add_dish(:test_item_1, 0.01)
    expect(menu.items).to eq(:test_item_1 => 0.01)
  end
end
