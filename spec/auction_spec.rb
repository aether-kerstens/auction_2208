require './lib/item'
require './lib/attendee'
require './lib/auction'
require 'pry'
RSpec.describe Auction do
  describe '#initialize' do
    it 'can create an auction' do
      auction = Auction.new
      expect(auction).to be_an_instance_of(Auction)
    end
  end
  describe '#add_item' do
    it 'can add an item' do
      auction = Auction.new
      items = []
      item1 = Item.new('Chalkware Piggy Bank')
      item2 = Item.new('Bamboo Picture Frame')
      expect(auction.items).to eq([])
      auction.add_item(item1)
      auction.add_item(item2)
      expect(auction.items).to eq([item1, item2])
    end
  end
end
