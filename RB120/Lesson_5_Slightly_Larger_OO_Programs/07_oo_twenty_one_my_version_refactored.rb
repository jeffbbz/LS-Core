require 'io/console'

DEALER_STAYS_AT = 17
BUST_AFTER = 21

module Graphical
  def show_header_graphic
    system 'clear'
    puts
    puts '🂠 🂡 🂠 🂢 🂠 🂣 🂠 🂤 🂠 🂥 🂠 🂦 🂠 🂧 🂠 🂨 🂠 🂩 🂠 🂪 🂠 🂬 🂠 🂭 🂠 🂮 🂠'
    puts '🂡' + (' ' * 51) + '🂡'
    puts "🂡#{"Welcome to #{BUST_AFTER}! Let's Play!".center(51)}🂡"
    puts '🂡' + (' ' * 51) + '🂡'
    puts '🂠 🂡 🂠 🂢 🂠 🂣 🂠 🂤 🂠 🂥 🂠 🂦 🂠 🂧 🂠 🂨 🂠 🂩 🂠 🂪 🂠 🂬 🂠 🂭 🂠 🂮 🂠'
    puts
  end

  def show_goodbye_graphic
    puts
    puts '🂠 🂡 🂠 🂢 🂠 🂣 🂠 🂤 🂠 🂥 🂠 🂦 🂠 🂧 🂠 🂨 🂠 🂩 🂠 🂪 🂠 🂬 🂠 🂭 🂠 🂮 🂠'
    puts '🂡' + (' ' * 51) + '🂡'
    puts "🂡#{"Thanks for playing #{BUST_AFTER}! Goodbye!".center(51)}🂡"
    puts '🂡' + (' ' * 51) + '🂡'
    puts '🂠 🂡 🂠 🂢 🂠 🂣 🂠 🂤 🂠 🂥 🂠 🂦 🂠 🂧 🂠 🂨 🂠 🂩 🂠 🂪 🂠 🂬 🂠 🂭 🂠 🂮 🂠'
    puts
  end

  # rubocop: disable Metrics/MethodLength
  def show_rules
    rules = <<~RULES
 
    🂠 🂡 🂠 🂢 🂠 🂣 🂠 🂤 🂠 🂥 🂠 🂦 🂠 🂧 🂠 🂨 🂠 🂦 🂠 🂧 🂠 🂨 🂠 🂩 🂠 🂪 🂠 🂬 🂠 🂭 🂠 🂮 🂠 
    🂡                                                               🂡
    🂠                      ♥ ♠ Rules of #{BUST_AFTER} ♦ ♣                      🂠
    🂢                                                               🂢
    🂠  #{BUST_AFTER} is played with a normal 52-card deck with 4 suits         🂠
    🂣  (hearts, diamonds, clubs, and spades), and 13 ranks (2, 3,   🂣
    🂠   4, 5, 6, 7, 8, 9, 10, Jack, Queen, King, Ace).              🂠 
    🂤                                                               🂤
    🂠  The goal of #{BUST_AFTER} is to try to get as close to #{BUST_AFTER} as possible,  🂠
    🂥  without going over. If you go over #{BUST_AFTER}, it's a "bust" and     🂥
    🂠  you lose. If your card total is higher than the dealer and   🂠
    🂦  you don't "bust" you win!                                    🂦
    🂠                                                               🂠
    🂧  It's a two player game. Both players are dealt 2 cards. You  🂧
    🂠  can see your 2 cards, but can only see one of the dealer's   🂠
    🂨  cards. You can then "hit" (take a card) or "stay" (keep      🂨
    🂠  your cards). You can hit as long as you have not gone over   🂠
    🂨  #{BUST_AFTER}. The dealer will automatically hit for itself until it's  🂨
    🂠  card total is higher than #{DEALER_STAYS_AT} and higher than or equal to     🂠
    🂩  the player's total, or it has busted.                        🂩
    🂠                                                               🂠
    🂬                      ♥ ♠ Card values ♦ ♣                      🂬
    🂠                                                               🂠
    🂭  All cards are their typical values. 2-10 are worth their     🂭
    🂠  numbered value. Face cards (K, J, Q) are worth 10 each.      🂠
    🂮  Aces are unique. They can be worth either 1 or 11. The       🂮
    🂠  Ace's value will be automatically determined according to    🂠
    🂩  the total value of a player's hand.                          🂩
    🂠                                                               🂠
    🂦                                                               🂦
    🂠 🂡 🂠 🂢 🂠 🂣 🂠 🂤 🂠 🂥 🂠 🂦 🂠 🂧 🂠 🂨 🂠 🂦 🂠 🂧 🂠 🂨 🂠 🂩 🂠 🂪 🂠 🂬 🂠 🂭 🂠 🂮 🂠

            RULES
    system 'clear'
    puts rules
    prompt("Ready to play? Press any key to continue!")
    STDIN.getch
  end
  # rubocop: enable Metrics/MethodLength

  def show_dealing_animation
    clear_screen_except_header
    prompt("Let's deal the cards!")
    puts
    print "    "
    '..🂠🂠..dealing..🂠🂠..'.each_char do |char|
      sleep 0.1
      print char
    end
    sleep 0.1
  end
end

module Displayable
  def prompt(text)
    puts "♢♢♢ #{text}"
  end

  def clear_screen_except_header
    system 'clear'
    show_header_graphic
  end

  def display_greet_player
    clear_screen_except_header
    prompt("Hello #{player.name}! The dealer's name is #{dealer.name}!")
    puts
  end

  def announce_dealer_turn
    clear_screen_except_header
    prompt("Okay, it's #{dealer.name}'s turn!")
    puts
    sleep 0.5
  end

  def display_game_result
    if player.busted?
      display_busted(player)
    elsif dealer.busted?
      display_busted(dealer)
    else
      display_winner(calculate_winner)
    end
  end

  def display_busted(person)
    prompt("#{person.name} went over #{BUST_AFTER}! Oh no, busted!")
    puts
    prompt("#{person.name} loses!")
  end

  def display_winner(winner)
    if winner != "Tie"
      prompt("#{winner}'s hand has a higher value. #{winner} wins!")
    else
      prompt("It's a tie!")
    end
  end
end

module Promptable
  def prompt_player_name
    name = nil
    loop do
      prompt("What's your name?")
      name = gets.chomp.strip.capitalize
      break unless name.empty?
      prompt("Sorry, please input your name.")
    end
    name
  end

  def prompt_need_rules?
    prompt("Type 'r' then 'enter' to see the rules or just 'enter' to play!")
    answer = gets.strip.chomp
    show_rules if answer.downcase.start_with?('r')
  end

  def prompt_player_move
    answer = nil
    loop do
      prompt("Would you like to stay or hit? (Choose: s/h)")
      answer = gets.chomp.downcase
      break if %w(s h).include?(answer)
      prompt("That's not a valid action.")
    end
    answer == 'h' ? 'hit' : 'stay'
  end

  def play_again?
    answer = nil
    loop do
      puts
      prompt("Would you like to play again? (y/n)")
      answer = gets.chomp.downcase
      break if ['y', 'n'].include? answer
      prompt("Sorry, must be y or n.")
    end
    answer == 'y'
  end
end

module Hand
  def show_flop(player)
    clear_screen_except_header
    show_partial_hand
    player.show_hand
  end

  def show_partial_hand
    cards = '🂠' * hand.size
    prompt("#{name} has #{cards} cards: #{hand.first} &  | an unknown card |")
    prompt("#{name}'s current hand value is at least #{hand.first.value}.")
    puts
  end

  def show_hand
    cards = hand.map(&:to_s)
    prompt("#{name} has #{'🂠' * hand.size} cards: #{cards.join(' & ')}")
    prompt("#{name}'s current hand value is #{hand_value}.")
    puts
  end

  def show_hit
    clear_screen_except_header
    prompt("#{name} hit and drew a #{hand.last}")
    puts
    sleep 0.5
  end

  def calculate_hand_value
    val = hand.inject(0) { |sum, card| sum + card.value }
    hand.select { |c| c.rank == "Ace" }.size.times { val -= 10 if val > 21 }
    self.hand_value = val
  end
end

class Participant
  include Hand
  include Displayable
  include Graphical

  attr_accessor :hand, :name, :hand_value

  def initialize(name=" ")
    @name = name
    @hand = []
    @hand_value = 0
  end

  def >(other_player)
    hand_value > other_player.hand_value
  end

  def busted?
    calculate_hand_value > BUST_AFTER
  end

  private

  def hit!(deck)
    hand << deck.cards.shift
  end
end

class Player < Participant
  include Promptable

  def turn(deck, dealer)
    loop do
      break if busted? || prompt_player_move == 'stay'
      hit!(deck)
      show_hit
      calculate_hand_value
      dealer.show_partial_hand
      show_hand
    end
  end
end

class Dealer < Participant
  def turn(deck, player)
    loop do
      calculate_hand_value
      show_hand
      player.show_hand
      stay if stay?(player)
      break if stay?(player) || busted?
      sleep 1.5
      hit!(deck)
      show_hit
    end
  end

  private

  def stay?(other_player)
    self > other_player && hand_value >= DEALER_STAYS_AT && !busted?
  end

  def stay
    prompt("#{name} stays.")
    puts
  end
end

class Deck
  attr_reader :cards

  def initialize
    @cards = shuffle_new_deck
  end

  private

  def shuffle_new_deck
    Card::SUITS.product(Card::RANKS).map do |card|
      Card.new(card[0], card[1])
    end.shuffle
  end
end

class Card
  SUITS = %w(♥ ♠ ♦ ♣)
  RANKS = %w(2 3 4 5 6 7 8 9 Jack Queen King Ace)

  attr_reader :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
    @value = value
  end

  def value
    case rank
    when "Ace" then 11
    when '2'..'9' then rank.to_i
    when "Jack", "Queen", "King" then 10
    end
  end

  def to_s
    " | #{rank} of #{suit}'s | "
  end

  private

  attr_reader :suit
end

class Game
  include Displayable
  include Promptable
  include Graphical

  def initialize
    @deck = Deck.new
    @player = Player.new
    @dealer = Dealer.new("Kurt")
  end

  def play
    game_setup
    loop do
      main_game
      display_game_result
      break unless play_again?
      reset_game
    end
    show_goodbye_graphic
  end

  private

  attr_accessor :deck
  attr_reader :player, :dealer

  def game_setup
    show_header_graphic
    player.name = prompt_player_name
    display_greet_player
    prompt_need_rules?
  end

  def main_game
    show_dealing_animation
    deal_cards!
    update_hand_values
    dealer.show_flop(player)
    player.turn(deck, dealer)
    return if player.busted?
    announce_dealer_turn
    dealer.turn(deck, player)
  end

  def update_hand_values
    [player, dealer].each(&:calculate_hand_value)
  end

  def deal_cards!
    player.hand += deck.cards.slice!(0, 2)
    dealer.hand += deck.cards.slice!(0, 2)
  end

  def calculate_winner
    if player > dealer
      player.name
    elsif dealer > player
      dealer.name
    else
      "Tie"
    end
  end

  def reset_game
    self.deck = Deck.new
    player.hand = []
    dealer.hand = []
  end
end

Game.new.play
