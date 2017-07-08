require './src/takeaway.rb'

describe Takeaway do

  subject(:takeaway) { described_class.new }
  let(:menu) { double(:menu, :items => { :test_item_1 => 0.01 }) }

  it 'can place an order' do
    expect(takeaway.new_order(:test_item_1, 2)).to eq(0.02)
  end

end
