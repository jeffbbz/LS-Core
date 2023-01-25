require 'io/console'
WIN_SCORE = 5

module Displayable
  def display_welcome_message
    system('clear')
    puts "Hey #{human.name}!"
    puts "Welcome to Rock, Paper, Scissors, Lizard, Spock!"
    puts "First to #{WIN_SCORE} wins!"
    puts
  end

  # rubocop: disable Metrics/MethodLength
  def display_rules
    return if get_y_n_answer("Would you like to see the rules? (y/n)") == 'n'
    system 'clear'
    rules = <<~RULES

    +-#{'-' * 20} RULESRULESRULESRULES #{'-' * 20}-+ 
    | #{' ' * 62} |
    |  Scissors cuts Paper covers Rock crushes Lizard poisons Spock  |
    |  smashes Scissors decapitates Lizard eats Paper disproves      |
    |  Spock vaporizes Rock crushes Scissors!                        | 
    | #{' ' * 62} |
    |  RPSLS is an expanded version of trad. Rock, Paper, Scissors.  |
    |  It utilizes two extra moves (Spock and Lizard). Additionally, |
    |  whereas in RPS each move can defeat one other move and lose   |
    |  to one other move, in RPSLS each move defeats two other       |
    |  moves and loses to two other moves.                           |
    | #{' ' * 62} |
    |  Rock beats: Scissors and Lizard                               |
    |  Paper beats: Rock and Spock                                   |
    |  Scissors beats: Paper and Lizard                              |
    |  Lizard beats: Paper and Spock                                 |
    |  Spock beats: Rock and Scissors                                |
    | #{' ' * 62} |
    |  Additionally, in this version you can choose to play against  |
    |  four different computer player robots: Dalek, Hal, Chappie,   |
    |  and Terminator. They each have thier own personalities and    |   
    |  play style.                                                   |
    | #{' ' * 62} |
    |  First to win #{WIN_SCORE} rounds wins the match!                         |
    | #{' ' * 62} |
    +-#{'-' * 20} RULESRULESRULESRULES #{'-' * 20}-+
  
              RULES
    puts rules
    puts "Press any key to continue!"
    STDIN.getch
  end
  # rubocop: enable Metrics/MethodLength

  def get_y_n_answer(question)
    answer = nil
    loop do
      puts question
      answer = gets.chomp
      break if ['y', 'n'].include?(answer.downcase)
      puts "Sorry, must be y or n."
    end
    answer
  end

  def display_moves
    puts "------ Round #{RPSGame.round_number} ------"
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
    puts
  end

  def display_round_winner
    if RPSGame.round_winner == 'tie'
      puts "It's a tie!"
    else
      puts "#{RPSGame.round_winner.name} won this round!"
    end
    puts
  end

  def display_score
    system('clear')
    score = <<~SCORE
    ------- Score -------
    #{human.name}: #{human.score}
    #{computer.name}: #{computer.score}

    SCORE
    puts score
  end

  def display_game_winner
    winner = (human.score == WIN_SCORE ? human : computer)
    puts "#{winner.name} is the first to #{WIN_SCORE} points!"
    puts "#{winner.name} wins the game!"
    puts
  end

  def display_move_history
    return if get_y_n_answer("Check the move history? (y/n)") == 'n'
    system 'clear'
    puts "Each player made #{human.rounds_played} moves."
    return human.display_history, computer.display_history
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors, Lizard, Spock! Bye!"
  end
end

module Moves
  CHOICES = {
    'r' => 'rock',
    'p' => 'paper',
    'sc' => 'scissors',
    'l' => 'lizard',
    'sp' => 'spock'
  }

  class Move
    def >(current_move, lesser_move_one, lesser_move_two)
      current_move.is_a?(lesser_move_one) || current_move.is_a?(lesser_move_two)
    end

    def to_s
      self.class.to_s.split('::').last
    end
  end

  class Rock < Move
    def >(other_class)
      super(other_class, Scissors, Lizard)
    end
  end

  class Scissors < Move
    def >(other_class)
      super(other_class, Paper, Lizard)
    end
  end

  class Paper < Move
    def >(other_class)
      super(other_class, Rock, Spock)
    end
  end

  class Lizard < Move
    def >(other_class)
      super(other_class, Paper, Spock)
    end
  end

  class Spock < Move
    def >(other_class)
      super(other_class, Rock, Scissors)
    end
  end
end

class Player
  attr_accessor :score, :history, :name
  attr_reader :move

  def initialize
    set_name
    @score = 0
    @history =
      {
        "rock" => 0,
        "paper" => 0,
        "scissors" => 0,
        "lizard" => 0,
        "spock" => 0
      }
  end

  def display_history
    player = name
    output = <<~HISTORY

    ------ #{player}'s Move History: ------
    #{player} called rock #{history['rock']} times.
    #{player} called paper #{history['paper']} times.
    #{player} called scissors #{history['scissors']} times.
    #{player} called lizard #{history['lizard']} times.
    #{player} called spock #{history['spock']} times.
    HISTORY
    puts output
  end

  def update_history(last_move)
    history[last_move.to_s.split('::').last.downcase] += 1
  end

  private

  attr_writer :move
end

class Human < Player
  attr_accessor :rounds_played

  def initialize
    super
    @rounds_played = 0
  end

  def set_name
    system('clear')
    n = ''
    loop do
      puts "Hello there, what's your name?"
      n = gets.chomp.strip
      break unless n.empty?
      puts "Sorry, must enter a value."
    end
    self.name = n
  end

  def choose_move
    choice = nil
    loop do
      puts "Please choose a move: rock, paper, scissors, lizard, or spock!"
      puts "You can also abbreviate with r, p, sc, l, or sp!"
      choice = gets.chomp.downcase
      break if Moves::CHOICES.key?(choice) || Moves::CHOICES.value?(choice)
      puts "Sorry, invalid choice."
    end
    choice = Moves::CHOICES[choice] if Moves::CHOICES.key?(choice)
    self.move = Object.const_get("Moves::#{choice.capitalize}").new
  end
end

class Computer < Player
  ROBOTS = ['Dalek', 'Hal', 'Chappie', 'Terminator']

  def set_name
    self.name = self.class.to_s
  end

  def choose_move(moves = Moves::CHOICES.values)
    self.move = Object.const_get("Moves::#{moves.sample.capitalize}").new
  end
end

class Dalek < Computer # Always Chooses 'rock'
  def choose_move
    self.move = Moves::Rock.new
  end
end

class Hal < Computer # Choose 'scissors' most, 'rock' 2nd most, no 'paper'
  def choose_move
     moves = Moves::CHOICES.values
     moves.push("scissors", "scissors", "rock")
     moves.delete("paper")
     super(moves)
  end
end

class Chappie < Computer # Only chooses from trad rps choices.
  def choose_move
    super(Moves::CHOICES.values[0..2])
  end
end

class Terminator < Computer # Plays regularly
end

class RPSGame
  include Displayable

  @@round_winner = nil
  @@round_number = 0

  def self.round_winner
    @@round_winner
  end

  def self.round_number
    @@round_number
  end

  def play_game
    display_welcome_message
    display_rules
    loop do
      choose_opponent
      play_round
      display_game_winner
      display_move_history
      break unless play_again?
    end
    display_goodbye_message
  end

  private

  attr_accessor :human, :computer

  def initialize
    @human = Human.new
  end

  def choose_opponent
    system 'clear'
    answer = nil
    loop do
      puts "Choose your opponent: Dalek, Hal, Chappie, or Terminator"
      answer = gets.chomp.capitalize
      break if Computer::ROBOTS.include?(answer)
      puts "Sorry, please choose from the provided choices."
    end
    @computer = Object.const_get(answer).new
    puts "Your computer opponent is #{computer.name}."
  end

  def players_choose_moves
    human.choose_move
    human.update_history(human.move)
    computer.choose_move
    computer.update_history(computer.move)
    human.rounds_played += 1
    @@round_number += 1
  end

  def calculate_round_winner
    @@round_winner = if human.move > computer.move
                       human.score += 1
                       human
                     elsif computer.move > human.move
                       computer.score += 1
                       computer
                     else
                       'tie'
                     end
  end

  def winning_score_reached?
    WIN_SCORE == human.score || WIN_SCORE == computer.score
  end

  def play_again?
    reset_stats
    puts
    get_y_n_answer("Would you like to play again? (y/n)") == 'y'
  end

  def reset_stats
    human.score = 0
    human.history = human.history.transform_values { |_| 0 }
    human.rounds_played = 0
    @@round_number = 0
  end

  def play_round
    loop do
      players_choose_moves
      calculate_round_winner
      display_score
      display_moves
      display_round_winner
      break if winning_score_reached?
    end
  end
end

RPSGame.new.play_game
