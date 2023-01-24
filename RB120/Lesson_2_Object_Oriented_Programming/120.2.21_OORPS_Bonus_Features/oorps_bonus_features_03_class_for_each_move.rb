class Move
  MOVES = ["rock", "paper", "scissors", "lizard", "spock"]

  def >(current_move, lesser_move_one, lesser_move_two)
    current_move.is_a?(lesser_move_one) || current_move.is_a?(lesser_move_two)
  end

  def to_s
    self.class.to_s.downcase
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

class Player
  attr_accessor :move, :name, :score

  def initialize
    set_name
    @score = 0
  end
end

class Human < Player
  def set_name
    n = ''
    loop do
      puts "Hello there, what's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value."
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please choose: rock, paper, scissors, lizard, or spock!"
      choice = gets.chomp
      break if Move::MOVES.include?(choice)
      puts "Sorry, invalid choice."
    end
    self.move = Object.const_get(choice.capitalize).new
  end
end

class Computer < Player
  def set_name
    self.name = ['R2D2', 'Hal', 'Chappie', 'Sonny'].sample
  end

  def choose
    self.move = Object.const_get(Move::MOVES.sample.capitalize).new
  end
end

class RPSGame
  attr_accessor :human, :computer

  @@win_score = 10
  @@round_winner = nil

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    system('clear')
    puts "Hey #{human.name}! Welcome to Rock, Paper, Scissors, Lizard, Spock!"
    puts "First to #{@@win_score} wins!"
  end

  def players_choose_moves
    human.choose
    computer.choose
  end

  def display_moves
    system('clear')
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
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

  def display_round_winner
    puts @@round_winner == 'tie' ? "It's a tie!" : "#{@@round_winner.name} won!"
  end

  def display_score
    score = <<~SCORE

    Score:
    #{human.name}: #{human.score}
    #{computer.name}: #{computer.score}

    SCORE
    puts score
  end

  def display_game_winner
    puts
    if human.score == @@win_score
      puts "You're the first to #{@@win_score} points!"
      puts "You win!"
    else
      puts "#{computer.name} is the first to #{@@win_score} points!"
      puts "#{computer.name} wins!"
    end
    puts
  end

  def play_again?
    human.score = 0
    computer.score = 0
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include?(answer.downcase)
      puts "Sorry, must be y or n."
    end
    answer == 'y'
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors, Lizard, Spock! Bye!"
  end

  def play
    loop do
      display_welcome_message
      loop do
        players_choose_moves
        display_moves
        calculate_round_winner
        display_round_winner
        break if @@win_score == human.score || @@win_score == computer.score
        display_score
      end
      display_game_winner
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play

=begin
  
Q: Is making each move its own class a good good design decision? What are the pros/cons?

A: Overall it seems like a bit of a toss up for me as there are definete pros and cons of each.

Pros: The code is definetly more dry. By creating subclasses for each move that inherit from the Move
superclass, we are able to eliminate the repetative methods previously called in the Move class.
Even more important is that our logic for the Move#> method is now considerably condensed and 
much more readable. We can also now more easily add or remove additional moves later. Given
these considerations (More Dry, Easier to Maintain + Expand, Easier to read) It seems like this
was a good choice.

Cons: The primary con is that I'm not sure that moves make sense as classes in the context of
our overall design. Additionally, the game design seems a bit more complicated being expanded
into further classes.

=end