require "rails_helper"

RSpec.describe Deck, type: :model do
  it "has the right number of cards" do
    deck = Deck.new
    expect(deck.size).to eq(52)
  end

  it "shuffles the cards" do
    deck = Deck.new
    first_card = deck.instance_variable_get(:@cards).first
    deck.shuffle
    expect(deck.instance_variable_get(:@cards).first).not_to eq(first_card)
  end

  it "can draw a card" do
    deck = Deck.new
    deck.draw!
    expect(deck.size).to eq(51)
  end

  it "can deal the cards" do
    deck = Deck.new
    # hand = Hand.new
    deck.deal
    # expect(hand.size).to eq(26)
    expect(deck.size).to eq(0)
  end
end
