class Move
  VALUES = ['rock', 'paper', 'scissors']

  def initialize(value)
    @value = value
  end

  def scissors?
    @value == 'scissors'
  end

  def rock?
    @value == 'rock'
  end

  def paper?
    @value == 'paper'
  end

  def >(other_move)
    (rock? && other_move.scissors?) ||
      (paper? && other_move.rock?) ||
      (scissors? && other_move.paper?)
  end

  def <(other_move)
    (rock? && other_move.paper?) ||
      (paper? && other_move.scissors?) ||
      (scissors? && other_move.rock?)
  end

  def to_s
    @value
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
      puts "Please choose: rock, paper, or scissors!"
      choice = gets.chomp
      break if Move::VALUES.include?(choice)
      puts "Sorry, invalid choice."
    end
    self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ['R2D2', 'Hal', 'Chappie', 'Sonny'].sample
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
  end
end

class RPSGame
  attr_accessor :human, :computer
  
  @@win_score = 10

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    system('clear')
    puts "Welcome to Rock, Paper, Scissors, #{human.name}!"
    puts "First to #{@@win_score} wins!"
  end

  def display_goodbye_message
    puts "#{human.name}, thanks for playing Rock, Paper, Scissors. Bye!"
  end

  def display_moves
    system('clear')
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
  end

  def display_round_winner
    if human.move > computer.move
      human.score += 1
      puts "#{human.name} won!" 
    elsif human.move < computer.move
      computer.score += 1
      puts "#{computer.name} won!"
    else
      puts "It's a tie!"
    end
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
    if human.score == @@win_score
      puts
      puts "You're the first to #{@@win_score} points!"
      puts "You win!"
      puts
    else
      puts
      puts "#{computer.name} is the first to #{@@win_score} points!"
      puts "#{computer.name} wins!"
      puts
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include?(answer.downcase)
      puts "Sorry, must be y or n."
    end

    return true if answer == 'y'
    return false if answer == 'n'
  end

  def play
    loop do
      display_welcome_message
      loop do
        human.choose
        computer.choose
        display_moves
        display_round_winner
        break if @@win_score == human.score || @@win_score == computer.score
        display_score
      end
      display_game_winner
      break unless play_again?
      human.score, computer.score = 0, 0
    end
    display_goodbye_message
  end
end

RPSGame.new.play
