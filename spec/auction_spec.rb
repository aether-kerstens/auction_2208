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
      binding.pry
      expect(auction.items).to eq([item1, item2])
    end
  end

  #iteration 2

      item1 = Item.new('Chalkware Piggy Bank')
      item2 = Item.new('Bamboo Picture Frame')
      item3 = Item.new('Homemade Chocolate Chip Cookies')
      item4 = Item.new('2 Days Dogsitting')
      item5 = Item.new('Forever Stamps')

      attendee1 = Attendee.new({name: 'Megan', budget: '$50'})
      attendee2 = Attendee.new({name: 'Bob', budget: '$75'})
      attendee3 = Attendee.new({name: 'Mike', budget: '$100'})
      auction = Auction.new

      auction.add_item(item1)
      auction.add_item(item2)
      auction.add_item(item3)
      auction.add_item(item4)
      auction.add_item(item5)
      expect(item1.bids).to eq({})
      item1.add_bid(attendee2, 20)
      item1.add_bid(attendee1, 22)
      expect(item1.bids).to eq({20, 22})
      expect(item1.current_high_bid).to eq(22)
      item4.add_bid(attendee3, 50)
      expect(auction.unpopular_items).to eq([item2, item3, item5])
      item3.add_bid(attendee2, 15)
      expect(auction.unpopular_items).to eq([item2, item5])
      expect(auction.potential_revenue).to eq(87)
end
