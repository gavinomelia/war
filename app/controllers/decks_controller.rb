class DecksController < ApplicationController
  def index
    @deck = Deck.new
  end
end
