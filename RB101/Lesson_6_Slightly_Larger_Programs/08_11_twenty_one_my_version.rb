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
  prompt "Press 'r' to see the rules or enter to play!"
  answer = gets.chomp
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
  |  lose. If your card total is higher than the dealer and you    |
  |  don't "bust" you win!                                         |
  |                                                                |
  |  It's a two player game. Both players are dealt 2 cards. You   |
  |  can see your 2 cards, but can only see one of the dealer's    |
  |  cards. You then can "hit" (take a card) or "stay" (keep your  |
  |  cards). You can hit as long as you have not gone over #{BUST_AFTER}.     |
  |  The dealer will automatically hit for itself until its card   |
  |  total is higher than #{DEALER_STAYS_AT} or it has busted.                     |
  |                                                                |
  |                      ♥ ♠ Card Values ♦ ♣                       |
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
  prompt "Ready to play? Press enter to continue!"
  gets.chomp
  display_banner_graphic("--- Let's Play #{BUST_AFTER}! ---")
end
# rubocop: enable Metrics/MethodLength

def display_score(player_score, dealer_score)
  score = <<~SCORE
  ♣----------------------SCORE---------------------♦
                   You     :    #{player_score}  
                Dealer     :    #{dealer_score}
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

def dealer_starting_hand # Deals 2 random non-duplicate cards to dealer
  first_card = deal_card
  second_card = deal_card

  loop do
    break unless second_card.eql?(first_card)
    second_card = deal_card
  end
  [first_card, second_card]
end

def player_starting_hand(cards) # Deals 2 random non-duplicate cards to player
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

# rubocop: disable Style/ConditionalAssignment
def card_value_total(cards) # Adds the value of cards in hand
  values = cards.map { |card| card[0] }

  sum = 0
  values.each do |value|
    if value == "Ace"
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end
  # Checks if Ace should be 1 or 10
  values.select { |value| value == "Ace" }.count.times do
    sum -= 10 if sum > BUST_AFTER
  end

  sum
end
# rubocop: enable Style/ConditionalAssignment

def single_card_value(card) # calcs value of just 1 card for dealer first hand
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
    prompt "You have value of #{value}."
  elsif first_time == true && player == 'dealer'
    prompt "Okay, let's deal the cards!"
    puts "\n"
    prompt "Dealer has:  #{human_readable_card(cards[0])} and an unknown card."
    prompt "Dealer has value of at least #{single_card_value(cards[0][0])}."
  else
    sleep 0.75
    prompt "Dealer got:  #{human_readable_card(cards)}"
    prompt "Dealer has value of #{value}."
  end
  puts "\n"
end

def player_turn(hand, card_value) # players main turn loop
  loop do
    prompt "You're up! hit(h) or stay(s)?"
    answer = gets.chomp

    if answer.downcase.start_with?('h')
      hit!(hand)
      card_value = card_value_total(hand)
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

def dealer_turn(hand, card_value) # dealers main turn loop
  prompt "You chose stay! Now it's the Dealer's turn!"
  puts "\n"
  display_hand(hand, card_value, 'dealer', false)

  loop do
    break if dealer_stays?(card_value) || busted?(card_value)
    prompt "Dealer hits!"
    puts "\n"
    hit!(hand)
    card_value = card_value_total(hand)
    display_hand(hand, card_value, 'dealer', false)
  end
  card_value
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

def dealer_stays?(value)
  value >= DEALER_STAYS_AT
end

def display_dealer_stays
  sleep 0.75
  prompt "Dealer stays!"
  puts "\n"
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

def display_continue(player_scr, dealer_scr)
  prompt "Ready to go again? Hit enter to continue!"
  gets.chomp
  display_banner_graphic("--- Let's Play #{BUST_AFTER}! ---")
  display_score(player_scr, dealer_scr)
end

def display_match_over
  prompt "Match over!"
  puts "\n"
  prompt "Play another match? (y to play again or any key to quit)"
  gets.chomp
end

loop do # Program Start
  display_banner_graphic("--- Let's Play #{BUST_AFTER}! ---")
  need_rules?

  player_scr = 0
  dealer_scr = 0

  loop do # Main Loop
    # Initialize deck and deal hands
    dealer_hand = dealer_starting_hand
    player_hand = player_starting_hand(dealer_hand)
    dealer_card_value = card_value_total(dealer_hand)
    player_card_value = card_value_total(player_hand)

    # Show hands
    display_hand(dealer_hand, dealer_card_value, 'dealer', true)
    display_hand(player_hand, player_card_value, 'player')

    # Player turn
    player_card_value = player_turn(player_hand, player_card_value)

    if busted?(player_card_value) # If player busts
      display_busted('You')
      player_scr, dealer_scr = update_score(player_scr, dealer_scr, :dealer)
    else # If player stays
      # Dealer turn
      dealer_card_value = dealer_turn(dealer_hand, dealer_card_value)

      if busted?(dealer_card_value) # If dealer busts
        display_busted('Dealer')
        player_scr, dealer_scr = update_score(player_scr, dealer_scr, :player)
      elsif dealer_stays?(dealer_card_value) # If dealer stays
        display_dealer_stays
        winner = calc_winner(player_card_value, dealer_card_value)
        player_scr, dealer_scr = update_score(player_scr, dealer_scr, winner)
      end
    end

    display_score(player_scr, dealer_scr)
    break if match_over?(player_scr, dealer_scr)
    display_continue(player_scr, dealer_scr)
  end

  if match_over?(player_scr, dealer_scr)
    answer = display_match_over
    break unless answer.downcase.start_with?('y')
  end
end

display_banner_graphic("--- Goodbye! Play again soon! ---")
