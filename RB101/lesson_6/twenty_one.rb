# rubocop: disable Metrics/LineLength
# rubocop: disable Style/TrailingWhitespace
# Rules of Twenty-One
# You start with a normal 52-card deck consisting of the 4 suits (hearts, diamonds, clubs,
#  and spades), and 13 values (2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace).

# The goal of Twenty-One is to try to get as close to 21 as possible, without going over. 
# If you go over 21, it's a "bust" and you lose.

# Setup: the game consists of a "dealer" and a "player". Both participants are initially dealt 2 cards. 
# The player can see their 2 cards, but can only see one of the dealer's cards.

# Card values: all of the card values are pretty straightforward, except for the ace. T
# he numbers 2 through 10 are worth their face value. The jack, queen, and king are each worth 10,
#  and the ace can be worth 1 or 11. The ace's value is determined each time a new card is drawn
# from the deck. For example, if the hand contains a 2, an ace, and a 5, then the total value of
#  the hand is 18. In this case, the ace is worth 11 because the sum of the hand (2 + 11 + 5) doesn't
#   exceed 21. Now, say another card is drawn and it happens to be an ace. Your program will have to 
#   determine the value of both aces. If the sum of the hand (2 + 11 + 5 + 11) exceeds 21 then one of 
#   the aces must be worth 1, resulting in the hand's total value being 19. What happens if another card 
#   is drawn and it also happens to be an ace? It can get tricky if there are multiple aces in a hand,
#    so your program must account for that.

# Card  Value
# 2 - 10  face value
# jack, queen, king 10
# ace 1 or 11

# Player turn: the player goes first, and can decide to either "hit" or "stay". 
# A hit means the player will ask for another card. Remember that if the total
# exceeds 21, then the player "busts" and loses. The decision to hit or stay will 
# depend on what the player's cards are and what the player thinks the dealer has.
# For example, if the dealer is showing a "10" (the other card is hidden), and the
# player has a "2" and a "4", then the obvious choice is for the player to "hit". 
# The player can continue to hit as many times as they want. The turn is over when
# the player either busts or stays. If the player busts, the game is over and the dealer won.

# Dealer turn: when the player stays, it's the dealer's turn. The dealer must 
# follow a strict rule for determining whether to hit or stay: hit until the total is at least 17. 
# If the dealer busts, then the player wins. Comparing cards: when both the player and the dealer stay,
#  it's time to compare the total value of the cards and see who has the highest value.
# rubocop enable
=begin 
algorithm 
  1. Initialize deck
  2. Deal cards to player and dealer
    - randomly select two cards to dealer 
      + subtract the two cards from the deck 
    - randomly select two cards from the remainder of deck and dealer to player
      + subtract the two cards from the deck 
    - display
      + show one of the dealers to cards to the player 
      + show the player their cards
  2.5 subtracting from the deck 
    - randomly select a card from the deck of all cards
    - view both the players hands and dealers hand
      + if the (player_hand + dealer_hand).count(current_card) == 4 select other card
  3. Player turn: prompt the user if they would like to hit or stay
    - loop do
       + prompt the user if they would like to hit or stay
       + break if stay
       + hit if "hit"
       + display player cards and display one of dealers crads
       + break if "bust"
  4. check aces 
    -count the amount of aces in the input had
    -intitally count aces as 11
    -sum total_hand_score
    - until total_hand_score <= 21 
      + -10, do this count aces. times or if total_score <= 21
  4. If player bust, dealer wins.
  5. Dealer turn: hit or stay
    loop do 
     - stay if dealer_score >= 17
     - hit if dealer_score <= 17
     - break if dealer_bust
  6. If dealer bust, player wins.
  7. Compare cards and declare winner. 
    - player win = player > dealer
    - dealer win = player < dealer
    - tie:  play_score = dealer_score
    - player bust = player > 21
    - dealer bust = dealer > 21

card_deck = {
  'queen' => 10,
  'king' =>  10,
  'jack' =>  10,
  'ace' =>  11,
  '2' =>  2,
  '3' =>  3,
  '4' =>  4,
  '5' =>  5,
  '6' =>  6,
  '7' =>  7,
  '8' =>  8,
  '9' =>  9,
  '10' => 10,
}

# rubocop: enable Metrics/LineLength
# rubocop: enable Style/TrailingWhitespace
=end 
require 'pry'
require 'pry-byebug'

card_deck = {
  'queen' => 10,
  'king' => 10,
  'jack' => 10,
  'ace' => 11,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  '10' => 10
}

def prompt(msg)
  puts "=> #{msg}"
end 

def join_and(array, sep = ', ', word = 'and')
  if array.size == 1
    array.first
  elsif array.size == 2
    array.join(" #{word} ")
  else
    line_length = array.length 
    sentence = array.map.with_index do |card, index|
      if index == (line_length - 1)
        "#{word} #{card}" 
      else 
        card
      end
    end 
    sentence.join(sep) 
  end
end

def deal_cards(player_input_hand, dealer_input_hand, deck)
  select_card = deck.keys.sample 
  until (player_input_hand + dealer_input_hand).count(select_card) != 4
    select_card
  end 
  select_card
end

def deal_to_dealer(player_input_hand, dealer_input_hand, deck)
  deal = deal_cards(player_input_hand, dealer_input_hand, deck) 
  dealer_input_hand << deal 
end 

def deal_to_player(player_input_hand, dealer_input_hand, deck)
  deal = deal_cards(player_input_hand, dealer_input_hand, deck) 
  player_input_hand << deal 
end 

def display_dealer_cards(dealer_deck)
  system "clear"
  "dealer has #{dealer_deck[0]} and unknown card"
end 

def display_all_cards_of_hand(input_hand)
  join_and(input_hand)
end

def player_hit_stay
  hit_stay = ''
  loop do 
    puts ""
    prompt "would you like to hit or stay (type 'h' or 's')"
    hit_stay = gets.chomp.downcase
    break if ['h', 's'].include?(hit_stay)
    prompt "that was not a valid input, please type 'h' or 's'"
  end 
  hit_stay 
end 

def check_score(input_hand, deck)
  input_hand_values = input_hand.map { |card| deck[card] }
  aces_count = input_hand.count('ace')
  score_total = input_hand_values.sum

  until score_total <= 21
    break if aces_count == 0
    score_total -= 10 
    aces_count -= 1
  end
  score_total 
end 

def check_bust(input_hand, deck)
  check_score(input_hand, deck) > 21 
end 

def detect_results(dealer_cards, player_cards, deck)
  player_total = check_score(player_cards, deck)
  dealer_total = check_score(dealer_cards, deck)

  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end 

def display_result(dealer_cards, player_cards, deck)
  result = detect_results(dealer_cards, player_cards, deck)

  case result
  when :player_busted
    puts "You busted! Dealer wins!"
  when :dealer_busted
    puts "Dealer busted! You win!"
  when :player
    puts "You win!"
  when :dealer
    puts "Dealer wins!"
  when :tie
    puts "It's a tie!"
  end
end

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

loop do 
  puts "Welcome to Twenty-One! Good luck!"
  cards = card_deck
  dealer_hand = []
  player_hand = []

  loop do 
    2.times { deal_to_dealer(player_hand, dealer_hand, cards) }
    2.times { deal_to_player(player_hand, dealer_hand, cards) }
    puts display_dealer_cards(dealer_hand)
    puts "you have #{display_all_cards_of_hand(player_hand)} (score :  #{check_score(player_hand, cards)})"
    
    puts " "
    puts "player turn..."
    hit_stay = ''
    loop do 
      hit_stay = player_hit_stay 
      break if hit_stay == 's'
      puts "player hit"
      deal_to_player(player_hand, dealer_hand, cards)
      puts display_dealer_cards(dealer_hand)
      puts "you have #{display_all_cards_of_hand(player_hand)} (score: #{check_score(player_hand, cards)})" 
      break if check_bust(player_hand, cards)
    end

    break if check_bust(player_hand, cards)

    puts " "
    puts "dealer turn..."
    loop do 
      if check_bust(dealer_hand, cards)
        break 
      elsif check_score(dealer_hand, cards) >= 17 
        puts "dealer stayed with #{display_all_cards_of_hand(dealer_hand)} (score: #{check_score(dealer_hand, cards)})"
        break
      else 
        puts "dealer hit"
        deal_to_dealer(player_hand, dealer_hand, cards)
        puts "dealer new hand #{display_all_cards_of_hand(dealer_hand)}"
      end 
    end

    break
  
  end 
  display_result(dealer_hand, player_hand, cards)
  puts ""
  puts "=============="
  puts "Player has #{display_all_cards_of_hand(player_hand)}, for a total of: #{check_score(player_hand, cards)}"
  puts "Dealer has #{display_all_cards_of_hand(dealer_hand)}, for a total of: #{check_score(dealer_hand, cards)}"
  puts "=============="
  puts ""

  break unless play_again? 
end 

puts "Thank you for playing!"
