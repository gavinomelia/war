class Hand < ApplicationRecord
  def initialize(params)
    super
    @cards = []
  end

  def add_card(card)
    if card
      @cards << card
    end
  end

  def size
    @cards.size
  end
end
