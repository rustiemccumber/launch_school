
#using the card class from teh previous exercise, create a deck class that contains all of the
#standard 52 playing cards.  Use the following code to start your work:

#The Deck class whould provide a #draw method to deal one card.  The `Deck` should be shuffled when it is 
#initialized and if it rusn out of cards it should reset itself by generatin a new set of 52 shuffled cards.



class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze
  
  attr_accessor :deck

  def initialize
    @deck = []
    load_deck
  end

  def draw
    reload_deck
    drawn_card = @deck.pop
  end

  private

  def load_deck
    RANKS.each do |rank|
      SUITS.each do |suit|
        card = Card.new(rank, suit)
        @deck << card
      end
    end

    @deck.shuffle!
  end
  
  def reload_deck
    load_deck if deck.empty?
  end
  

end

class Card
  include Comparable
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  # def value
  #   VALUES.fetch(rank, rank)
  # end

  # def <=>(other_card)
  #   value <=> other_card.value
  # end
end

