class GuessingGame
  def initialize
    @number = (1..100).to_a.sample
    @guess = nil
    @guesses_left = 7
  end

  def play
    loop do
      display_guesses_left
      prompt_guess
      decrement_guesses_left
      check_guess
      break if guessed_right? || no_guesses_left
    end
    display_result
  end

  private

  attr_reader :number
  attr_accessor :guesses_left, :guess

  def display_guesses_left
    if guesses_left == 1 
      puts "You have 1 guesse remaining."
    else
      puts "You have #{guesses_left} guesses remaining."
    end
  end

  def prompt_guess
    answer = nil
    loop do
      puts "Enter a number between 1 and 100:"
      answer = gets.chomp.to_i
      break if (1..100).cover?(answer)
      puts "Invalid guess."
    end
    self.guess = answer
  end

  def check_guess
    if guess < number then puts "Your guess is too low."
    elsif guess > number then puts "Your guess is too high."
    else
      puts "That's the number!"
    end
  end

  def decrement_guesses_left
    self.guesses_left -= 1
  end

  def guessed_right?
    guess == number
  end

  def no_guesses_left
    guesses_left == 0
  end

  def display_result
    if guessed_right?
      puts "You won!"
    else
      puts "You have no more guesses. You lost!"
    end
  end
end

game = GuessingGame.new
game.play

# Further Exploration: With an additional player class as a collaborator to Guessing Game class.

class Player
  attr_accessor :guesses_left, :guess
  
  def initialize
    @guesses_left = 7
    @guess = nil
  end

  def display_guesses_left
    if guesses_left == 1 
      puts "You have 1 guesse remaining."
    else
      puts "You have #{guesses_left} guesses remaining."
    end
  end

  def decrement_guesses_left
    self.guesses_left -= 1
  end

  def no_guesses_left
    guesses_left == 0
  end
end

class GuessingGame
  def initialize
    @number = (1..100).to_a.sample
    @player = Player.new
  end

  def play
    loop do
      player.display_guesses_left
      prompt_guess
      player.decrement_guesses_left
      check_guess
      break if guessed_right? || player.no_guesses_left
    end
    display_result
  end

  private

  attr_reader :number, :player

  def prompt_guess
    answer = nil
    loop do
      puts "Enter a number between 1 and 100:"
      answer = gets.chomp.to_i
      break if (1..100).cover?(answer)
      puts "Invalid guess."
    end
    player.guess = answer
  end

  def check_guess
    if player.guess < number then puts "Your guess is too low."
    elsif player.guess > number then puts "Your guess is too high."
    else
      puts "That's the number!"
    end
  end

  def guessed_right?
    player.guess == number
  end

  def display_result
    if guessed_right?
      puts "You won!"
    else
      puts "You have no more guesses. You lost!"
    end
  end
end

game = GuessingGame.new
game.play