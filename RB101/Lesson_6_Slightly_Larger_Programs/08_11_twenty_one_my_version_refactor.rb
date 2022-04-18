require 'io/console'

DECK = {
  suits: %w(♥ ♠ ♦ ♣),
  cards: %w(2 3 4 5 6 7 8 9 Jack Queen King Ace)
}

DEALER_STAYS_AT = 17
BUST_AFTER = 21
MATCH_GOAL = 5

def prompt(message)
  puts ">> #{message}"
end

# rubocop: disable Metrics/AbcSize
def display_banner_graphic(message) # For Major Messages
  system 'clear' if message == "--- Let's Play #{BUST_AFTER}! ---"

  length = message.size
  space = length.odd? ? 2 : 1
  top = " ♥#{'-' * length}#{BUST_AFTER}#{'-' * length}♦"
  bottom = " ♠#{'-' * length}#{BUST_AFTER}#{'-' * length}♣"
  empty_sides = "#{BUST_AFTER} #{' ' * (length + length)} #{BUST_AFTER}"
  message_line = "#{BUST_AFTER} #{' ' * (length / 2)}#{message}" \
                 "#{' ' * ((length / 2) + space)}#{BUST_AFTER}"

  puts "\n"
  puts top
  puts empty_sides
  puts message_line
  puts empty_sides
  puts bottom
  puts "\n"
end
# rubocop: enable Metrics/AbcSize

def need_rules?
  prompt "First player to win 5 games wins the match!"
  puts "\n"
  prompt "Press 'r' + 'enter' to see the rules or just 'enter' to play!"
  answer = gets.strip.chomp
  display_rules if answer.downcase.start_with?('r')
end

# rubocop: disable Metrics/MethodLength
def display_rules
  rules = <<~RULES
 
  ♥------------------------------#{BUST_AFTER}--------------------------------♦ 
  |                                                                |
  |                      ♥ ♠ Rules of #{BUST_AFTER} ♦ ♣                       |
  |                                                                |
  |  #{BUST_AFTER} is played with a normal 52-card deck with 4 suits (hearts, |
  |  diamonds, clubs, and spades), and 13 values (2, 3, 4, 5, 6,   |
  |  7, 8, 9, 10, jack, queen, king, ace).                         | 
  |                                                                |
  |  The goal of #{BUST_AFTER} is to try to get as close to #{BUST_AFTER} as possible,   |
  |  without going over. If you go over #{BUST_AFTER}, it's a "bust" and you  |
  |  lose. If your card total is higher than the dealr and you    |
  |  don't "bust" you win!                                         |
  |                                                                |
  |  It's a two player game. Both players are dealt 2 cards. You   |
  |  can see your 2 cards, but can only see one of the dealer's    |
  |  cards. You then can "hit" (take a card) or "stay" (keep your  |
  |  cards). You can hit as long as you have not gone over #{BUST_AFTER}.     |
  |  The dealer will automatically hit for itself until it's card  |
  |  total is higher than #{DEALER_STAYS_AT} and equal to or higher than the       |
  |  player's total, or it has busted.                             |
  |                                                                |
  |                      ♥ ♠ Card values ♦ ♣                       |
  |                                                                |
  |  All cards are thier typical values. 2-10 are worth thier      |
  |  numbered value. Face cards (K, J, Q) are worth 10 each. Aces  |
  |  are unique. They can be worth either 1 or 11. The ace's       |
  |  value will be automatically determined according to the total |
  |  value of a player's hand.                                     |
  |                                                                |                         
  |                      ♥ ♠ Best of #{MATCH_GOAL} ♦ ♣                         |
  |                                                                |
  |  The winner of each hand/game gets 1 point. First player to    |
  |  get #{MATCH_GOAL} points wins it all!                                     |
  |                                                                |
  ♠------------------------------#{BUST_AFTER}--------------------------------♣

            RULES

  system 'clear'
  puts rules
  prompt "Ready to play? Press any key to continue!"
  STDIN.getch
  display_banner_graphic("--- Let's Play #{BUST_AFTER}! ---")
end
# rubocop: enable Metrics/MethodLength

def display_score(playr_score, dealr_score)
  score = <<~SCORE
  ♣----------------------SCORE---------------------♦
                   You     :    #{playr_score}  
                Dealer     :    #{dealr_score}
  ♥------------------------------------------------♠
    
              SCORE
  puts score
end

def deal_card # Generates 1 random card
  [DECK[:cards].sample, DECK[:suits].sample]
end

def human_readable_card(cards) # Makes cards readable for output to console
  if cards == cards.flatten
    cards.join(" of ")
  else
    cards.map { |card| card.join(" of ") }.join("  |  ")
  end
end

def dealr_starting_hand # Deals 2 random non-duplicate cards to dealer
  first_card = deal_card
  second_card = deal_card

  loop do
    break unless second_card.eql?(first_card)
    second_card = deal_card
  end
  [first_card, second_card]
end

def playr_starting_hand(cards) # Deals 2 random non-duplicate cards to player
  first_card = deal_card
  second_card = deal_card

  loop do
    break if not_dupe_card?(cards, first_card)
    first_card = deal_card
  end

  loop do
    break if not_dupe_card?(cards, second_card) && second_card != first_card
    second_card = deal_card
  end
  [first_card, second_card]
end

def not_dupe_card?(cards, new_card) # Checks that cards are not dupes
  cards.select { |card| new_card.eql?(card) }.empty?
end

def card_val_total(cards) # Adds the values of cards in hand
  values = cards.map { |card| card[0] }

  sum = 0
  values.each do |value|
    sum += single_card_val(value)
  end
  sum = ace_val_check(sum, values)
end

def ace_val_check(sum, card_values) # Checks if Ace should be 1 or 10
  card_values.select { |value| value == "Ace" }.count.times do
    sum -= 10 if sum > BUST_AFTER
  end
  sum
end

def single_card_val(card) # calcs value of single card
  if card == "Ace"
    11
  elsif card.to_i == 0
    10
  else
    card.to_i
  end
end

def display_hand(cards, value, player, first_time=false)
  if player == 'player'
    prompt "You've got:  #{human_readable_card(cards)}"
    prompt "You have a value of #{value}."
  elsif first_time == true && player == 'dealer'
    prompt "Okay, let's deal the cards!"
    puts "\n"
    prompt "Dealer has:  #{human_readable_card(cards[0])} and an unknown card."
    prompt "Dealer has a value of at least #{single_card_val(cards[0][0])}."
  else
    sleep 0.75
    prompt "Dealer got:  #{human_readable_card(cards)}"
    prompt "Dealer has a value of #{value}."
  end
  puts "\n"
end

def playr_turn(hand, card_value) # players main turn loop
  loop do
    prompt "You're up! hit(h) or stay(s)?"
    answer = gets.strip.chomp

    if answer.downcase.start_with?('h')
      hit!(hand)
      card_value = card_val_total(hand)
      display_hand(hand, card_value, 'player')
      break if busted?(card_value)
    elsif answer.downcase.start_with?('s')
      break
    else
      prompt "Invalid input. Try again!"
    end
  end
  card_value
end

# dealers main turn loop
def dealr_turn(hand, dealer_value, player_value)
  prompt "You chose stay! Now it's the dealer's turn!"
  puts "\n"
  display_hand(hand, dealer_value, 'dealer', false)

  loop do
    break if dealr_stays?(dealer_value, player_value) || busted?(dealer_value)
    prompt "Dealer hits!"
    puts "\n"
    hit!(hand)
    dealer_value = card_val_total(hand)
    display_hand(hand, dealer_value, 'dealer', false)
  end
  dealer_value
end

def hit!(cards) # Adds a random, non-dupe card to hand upon 'hit'
  card_count = cards.length
  new_card = deal_card

  loop do
    cards.push(new_card) if not_dupe_card?(cards, new_card)
    break if cards.length == card_count + 1
    new_card = deal_card
  end
  cards
end

def busted?(value)
  value > BUST_AFTER
end

def display_busted(player)
  prompt "Wow! #{player} busted!"
  puts "\n"
end

def dealr_stays?(dealer_value, player_value)
  dealer_value >= DEALER_STAYS_AT && dealer_value >= player_value
end

def display_dealr_stays
  sleep 0.75
  prompt "Dealer stays!"
  puts "\n"
end

def dealr_turn_result(dealer_card_val, player_card_val, player_scr, dealer_scr)
  if busted?(dealer_card_val) # If dealer busts
    display_busted('Dealer')
    player_scr, dealer_scr = update_score(player_scr, dealer_scr, :player)
  elsif dealr_stays?(dealer_card_val, player_card_val) # If dealer stays
    display_dealr_stays
    winner = calc_winner(player_card_val, dealer_card_val)
    player_scr, dealer_scr = update_score(player_scr, dealer_scr, winner)
  end
  return player_scr, dealer_scr
end

def display_winner(player_value, dealer_value, winner) # Game/hand winner
  if winner == :tie
    prompt "Dealer: #{dealer_value}, You: #{player_value}"
    prompt "It's a tie, but Dealer wins ties!"
  else
    prompt "You: #{player_value}, Dealer: #{dealer_value}"
    prompt "#{winner} won!"
  end
  puts "\n"
end

def calc_winner(player_value, dealer_value) # Game/hand winner
  sleep 0.75
  if player_value > dealer_value
    display_winner(player_value, dealer_value, 'You')
    :player
  elsif dealer_value > player_value
    display_winner(player_value, dealer_value, 'Dealer')
    :dealer
  else
    display_winner(player_value, dealer_value, :tie)
    :dealer
  end
end

def update_score(player_score, dealer_score, winner) # match score
  if winner == :player
    player_score += 1
  elsif winner == :dealer
    dealer_score += 1
  end
  return player_score, dealer_score
end

def match_over?(player_score, dealer_score)
  player_score == MATCH_GOAL || dealer_score == MATCH_GOAL
end

def display_continue(player_score, dealer_score)
  prompt "Ready to go again? Hit any key to continue!"
  STDIN.getch
  display_banner_graphic("--- Let's Play #{BUST_AFTER}! ---")
  display_score(player_score, dealer_score)
end

def display_match_over
  prompt "Match over!"
  puts "\n"
  prompt "Play another match? ('y' to play again or any key to quit)"
  gets.strip.chomp
end

loop do # Program Start
  display_banner_graphic("--- Let's Play #{BUST_AFTER}! ---")
  need_rules?

  playr_scr = 0
  dealr_scr = 0

  loop do # Main Loop
    # Initialize deck and deal hands
    dealr_hand = dealr_starting_hand
    playr_hand = playr_starting_hand(dealr_hand)
    dealr_card_val = card_val_total(dealr_hand)
    playr_card_val = card_val_total(playr_hand)

    # Show hands
    display_hand(dealr_hand, dealr_card_val, 'dealer', true)
    display_hand(playr_hand, playr_card_val, 'player')

    # player turn
    playr_card_val = playr_turn(playr_hand, playr_card_val)
    if busted?(playr_card_val) # If player busts
      display_busted('You')
      playr_scr, dealr_scr = update_score(playr_scr, dealr_scr, :dealer)
    else # If player stays, dealer turn
      dealr_card_val = dealr_turn(dealr_hand, dealr_card_val, playr_card_val)
      playr_scr, dealr_scr =
        dealr_turn_result(dealr_card_val, playr_card_val, playr_scr, dealr_scr)
    end

    display_score(playr_scr, dealr_scr)
    break if match_over?(playr_scr, dealr_scr)
    display_continue(playr_scr, dealr_scr)
  end

  if match_over?(playr_scr, dealr_scr)
    answer = display_match_over
    break unless answer.downcase.start_with?('y')
  end
end

display_banner_graphic("--- Goodbye! Play again soon! ---")
