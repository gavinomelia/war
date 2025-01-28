class Deck < ApplicationRecord
    def initialize(params)
    super
    @cards = [].tap do |cards|
      %w[♠︎ ♣︎ ♥︎ ♦︎].each do |suite|
        %w[A 2 3 4 5 6 7 8 9 10 J Q K].each do |rank|
          cards << Card.new(suite, rank)
        end
      end
    end
    shuffle
  end

  def each(&block)
    @cards.each(&block)
  end

  def size
    @cards.size
  end

  def shuffle
    @cards.shuffle!
  end

  def draw!
    @cards.pop
  end

  def deal
    # deck = [1, 2, 3, 4, 5, k, q, j]
    # deck.draw! == 1
    # deck.draw! == 2
    hand1 = Hand.new
    hand2 = Hand.new
    while size > 0 do
      hand1.add_card(draw!)
      hand2.add_card(draw!)
    end
  end
end
