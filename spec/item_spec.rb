require 'rspec'
require './lib/item'

RSpec.describe Item do
  describe '#initialize' do
    it 'can creat an item' do
      item = Item.new('Chalkware Piggy Bank')
      expect(item).to be_an_instance_of(Item)
      expect(item.name).to eq('Chalkware Piggy Bank')
    end
  end
end
