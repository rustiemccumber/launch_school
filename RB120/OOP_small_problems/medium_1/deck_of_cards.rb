
#using the card class from teh previous exercise, create a deck class that contains all of the
#standard 52 playing cards.  Use the following code to start your work:

#The Deck class whould provide a #draw method to deal one card.  The `Deck` should be shuffled when it is 
#initialized and if it rusn out of cards it should reset itself by generatin a new set of 52 shuffled cards.



class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze
end

class Card
  include Comparable
  attr_reader :rank, :suit

  VALUES = { 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def value
    VALUES.fetch(rank, rank)
  end

  def <=>(other_card)
    value <=> other_card.value
  end
end