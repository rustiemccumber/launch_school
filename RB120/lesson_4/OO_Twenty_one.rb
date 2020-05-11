# rubocop:disable all
# We'll follow our familiar pattern on tackling hte OO_Twenty-One Game:

# write a description fo the problem and extract major nouns and verbs.
# Make an initial guess at organizign the verbs into nouns
# and do a spike to expolore the problem with temporaray code.
# Optional - when you have a better ida of the problme, model your 
# thoughts inot CRC cards.

# description:
# Twenty-One is a card game consisting of a dealer and a player,
# where the participants try to get as 
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

# The "total"  there is obviously not going to be a class, 
# but an atrribute within a class. In other words,
# it's not a noun that performs actions, but a property of some other noun. 
# You can also think of it as a verb
# "calculate_total"

# Another thing to notes is that the verb "busts" is not an 
# action anyone is performing.  Rather, it's a state -
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
# A natural place to extract that redundancy seems to be a super class 
# -- perhaps `Participant`? In our
# reference implementatio, we're going to introduce a module called `Hand` that will capture this redundancy. 
# Remeber, this isn't th eonly way, and you can extract to a super class as well.

# Spike

# Let's write up some code and start exploring this design.  We can think and design all we want'
# but until we start coding
# we won't know for certain.

# Here is an overview of the game:
# - Both participcants are initially dealt 2 cards from a 52-card deck.
# - The player takes the first turn, and can "hit" or "stay".
# - If the player busts, he loses.  If he stays, it's the dealer's turn.
# The dealer must hit until his cards add up to at least 17.
# - If he busts, the player wins.  If bouth player and dealer stays, then the hightest total wins
# - If both totals are equal, then it's a tie, and noby wins
# - If he busts, the player wins.  If both player and dealer stays, then the highest total wins
# - If both totals are equal, then it's a tie, and nobody wins.
# rubocop:enable all

module Hand
  def convert_deck_to_card_names
    hand.map(&:to_s).join(' , ')
  end

  def busted?
    total > 21
  end

  def convert_hand_to_values_array
    hand.map(&:value)
  end

  def count_aces_in_hand
    hand.count(&:ace?)
  end

  def show_hand
    puts "--- #{name}'s Hand ----"
    puts convert_deck_to_card_names
    puts ""
    puts " => Total: #{total}"
    puts ""
  end

  def total
    total = convert_hand_to_values_array.inject(:+)
    # correct for aces
    if total > 21
      count_aces_in_hand.times do
        total -= 10
        break if total <= 21
      end
    end
    total
  end

  def reset_hand
    @hand = []
  end
end

class Participant
  include Hand

  attr_accessor :hand, :name
  def initialize
    @hand = []
  end
end

class Deck
  MARKERS = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "jack",
             "Queen", "King"]
  SUITS = ["spades", "hearts", "clubs", "diamonds"]
  VALUES = [11, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 10]

  attr_accessor :cards
  def initialize
    @cards = []
    load_deck
  end

  def deal(player_type, number_of_cards)
    number_of_cards.times do
      current_card = @cards.sample
      @cards.delete(current_card)
      player_type.hand << current_card
    end
    # randomly select a card in the deck, and push it to the participants hand
  end

  def load_deck
    MARKERS.zip(VALUES).each do |marker, value|
      SUITS.each do |suit|
        @cards << Card.new(marker, suit, value)
      end
    end
  end
end

class Player < Participant
  def set_name
    name = ''
    loop do
      puts "What's your name?"
      name = gets.chomp
      break unless name.empty?
      puts "Sorry, must enter a value."
    end
    self.name = name
  end

  def show_flop
    show_hand
  end
end

class Dealer < Participant
  def initialize
    super
    set_name
  end
  ROBOTS = ['R2D2', 'Hal', 'Chappie', 'Sonny', 'Number 5']

  def set_name
    self.name = ROBOTS.sample
  end

  def show_flop
    puts "---- #{name}'s Hand ----"
    puts "#{hand.first} and ??"
    puts ""
  end
end

class Card
  attr_accessor :marker, :suit, :value
  def initialize(marker, suit, value)
    @marker = marker
    @suit = suit
    @value = value
  end

  def to_s
    "#{marker} of #{suit}"
  end

  def ace?
    @marker == "Ace"
  end
end

class Game
  attr_accessor :deck, :dealer, :player

  def initialize
    clear_screen
    @deck = Deck.new
    @player = Player.new
    @dealer = Dealer.new
  end

  def start
    display_welcome_message
    set_player_name
    loop do
      clear_screen
      deal_initial_cards
      show_initial_cards
      player_turn
      dealer_turn
      show_results
      play_again? ? reset : break
    end
  end

  def clear_screen
    system 'clear'
  end

  def set_player_name
    player.set_name
  end

  def display_welcome_message
    puts "Welcome to Twenty-One"
  end

  def deal_initial_cards
    deck.deal(player, 2)
    deck.deal(dealer, 2)
  end

  def show_initial_cards
    player.show_flop
    dealer.show_flop
  end

  def show_player_cards
    player.show_hand
  end

  def hit_or_stay
    puts "would you like to hit (h) or stay (s)?"
    answer = nil
    loop do
      answer = gets.chomp.downcase
      break if ["h", "s"].include?(answer)
      puts "sorry that is not a valid input"
    end
    answer
  end

  def deal_to_player
    deck.deal(player, 1)
  end

  def deal_to_dealer
    deck.deal(dealer, 1)
  end

  def player_turn
    counter = 0
    loop do
      clear_screen if counter >= 1
      show_player_cards if counter >= 1
      answer = hit_or_stay
      deal_to_player if answer == "h"
      break if answer == "s" || player.busted?
      counter += 1
    end
  end

  def dealer_turn
    return nil if player.busted? && (dealer.total >= 17)
    loop do
      deal_to_dealer
      break if dealer.busted? || (dealer.total >= 17)
    end
  end

  def display_scoreboard
    puts "player score: #{player.total}"
    puts "dealer score: #{dealer.total}"
  end

  def display_busted
    return puts "#{player.name} busted dealer win" if player.busted?
    return puts "#{dealer.name} busted you win" if dealer.busted?
  end

  # rubocop:disable Metrics/AbcSize
  def display_winner
    if player.total > dealer.total
      puts "#{plrayer.name} won!"
    elsif player.total < dealer.total
      puts "#{dealer.name} won!"
    elsif player.total == dealer.total
      puts "it's a tie"
    end
  end
  # rubocop:enable Metrics/AbcSize

  def show_results
    return display_busted if player.busted? || dealer.busted?
    display_scoreboard
    display_winner
  end

  def play_again?
    puts "would you like to play again yes (y) or no (n)?"
    answer = nil
    loop do
      answer = gets.chomp.downcase
      break if ["y", "n"].include?(answer)
    end
    return false if answer == "n"
    return true if answer == "y"
  end

  def reset
    player.reset_hand
    dealer.reset_hand
    self.deck = Deck.new
  end
end

game_object = Game.new
game_object.start
