require './src/notification.rb'

describe Notification do

  subject(:notification) { described_class.new('Test Message') }
  let(:messages) { double(:messages) }
  let(:account) { double(:account) }
  let(:client) { double(:client) }

  it 'sends a notification' do
    expect(notification).to receive(:send)
    notification.generate_and_send('+447843627130')
  end

end
