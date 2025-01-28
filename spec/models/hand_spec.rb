require 'rails_helper'

RSpec.describe Hand, type: :model do
  it "can add a card" do
    hand = Hand.new
    hand.add_card(Card.new(suite: "♠︎", rank: "A"))
    expect(hand.size).to eq(1)
  end

  it "missing card" do
    hand = Hand.new
    hand.add_card(nil)
    expect(hand.size).to eq(0)
  end
end
