#We'll follow our familiar pattern on tackling hte OO_Twenty-One Game:

#write a description fo the problem and extract major nouns and verbs.
#Make an initial guess at organizign the verbs into nouns and do a spike to expolore the problem with temporaray code.
#Optional - when you have a better ida of the problme, model your thoughts inot CRC cards.

#description:
# Twenty-One is a card game consisting of a dealer and a player, where the participants try to get as 
# cloase as possible to 21 without going over. 

# Here is an overview of the game:
# - Both participcants are initially dealt 2 cards from a 52-card deck.
# - The player takes the first turn, and can "hit" or "stay".
# - If the player busts, he loses.  If he stays, it's the dealer's turn.
# The dealer must hit until his cards add up to at least 17.
# - If he busts, the player wins.  If bouth player and dealer stays, then the hightest total wins
# - If both totals are equal, then it's a tie, and noby wins
# - If he busts, the player wins.  If both player and dealer stays, then the highest total wins
#- If both totals are equal, then it's a tie, and nobody wins.

# Let's write down the nouns and verbs

# Nouns: card, player, dealer, participant, deck, game, total
# Verbs:  deal, hit stay, busts

# The "total"  there is obviously not going to be a class, but an atrribute within a class. In other words,
# it's not a noun that performs actions, but a property of some other noun. You can also think of it as a verb
# "calculate_total"

# Another thing to notes is that the verb "busts" is not an action anyone is performing.  Rather, it's a state -
# is the player/dealer busted?

# Let's write out the classes and organize the verbs.

# Player
# - hit
# - stay
# - busted?
# - total
# Dealer
# - hit
# - stay
# - busted?
# - total
# - deal (should this be here, or in Deck?)
# Participant
# Deck
# - deal (should this be here, or in Dealer?)
# Card
# Game
# - start

# First thing to notice is that there is a lot of redundancy in the `Player` and `Dealer` classes.
#  A natural place to extract that redundancy seems to be a super class -- perhaps `Participant`? In our
# reference implementatio, we're going to introduce a module called `Hand` that will capture this redundancy. 
# Remeber, this isn't th eonly way, and you can extract to a super class as well.

# Spike

# Let's write up some code and start exploring this design.  We can think and design all we want' but until we start coding
# we won't know for certain.

# Here is an overview of the game:
# - Both participcants are initially dealt 2 cards from a 52-card deck.
# - The player takes the first turn, and can "hit" or "stay".
# - If the player busts, he loses.  If he stays, it's the dealer's turn.
# The dealer must hit until his cards add up to at least 17.
# - If he busts, the player wins.  If bouth player and dealer stays, then the hightest total wins
# - If both totals are equal, then it's a tie, and noby wins
# - If he busts, the player wins.  If both player and dealer stays, then the highest total wins
#- If both totals are equal, then it's a tie, and nobody wins.

module Hand

  def busted?
    hand.values.add > 21
  end 

  def total
  end

end

class Participant

  def initialize
    @name
    @hand = { }
  end

  def hit
  end 

  def stay
  end 

end

class Deck

  attr_accessor :cards
  def initialize
    @cards = []
    load_deck
  end

  def deal
    # does the dealer or the deck deal?
  end 

  def load_deck

    markers = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "jack", "Queen", "King" ]
    suites = ["spades", "hearts", "clubs", "diamonds"]
    values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 10]

    markers.zip(values).each do |marker, value|
      suites.each do |suite|
        @cards << Card.new( marker, suite, value)
      end 
    end
  end
end

class Player < Participant

  include Hand

  attr_accessor :name
  def initialize
    @name

  end


end 

class Dealer < Participant

  include Hand 

  def deal
    # does the dealer or the deck deal?
  end 

end

class Card
  def initialize( marker, suite, value)
    @marker = marker
    @suite =  suite
    @value =  value
  end 
end 

class Game

  attr_accessor :deck

  def initialize
    @deck = Deck.new
  end

  # def start
  #   deal_cards
  #   show_initial_cards
  #   player_turn
  #   delaer_turn
  #   show_results
  # end
end

#Game.new.start
game_object = Game.new
print game_object.deck.cards
