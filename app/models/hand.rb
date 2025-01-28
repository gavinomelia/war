class Hand < ApplicationRecord
  def initialize(params)
    super
    @cards = []
  end

  def add_card(card)
    @cards << card
  end
end
