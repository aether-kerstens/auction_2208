require './lib/item'
require './lib/attendee'

RSpec.describe Attendee do
  before(:each) do
    @attendee = Attendee.new({name: 'Megan', budget: '$50'})
  end
  describe 'initialize' do
    it 'can create an attendee' do
      expect(@attendee).to be_an_instance_of(Attendee)
    end
    it 'can have a name' do
      expect(@attendee.name).to eq("Megan")
    end
    it 'can have a budget' do
      expect(@attendee.budget).to eq('$50')
    end
  end
end
