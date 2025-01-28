require 'rails_helper'

RSpec.describe Hand, type: :model do
  it "can add a card" do
    hand = Hand.new
    hand.add_card
  end
end
