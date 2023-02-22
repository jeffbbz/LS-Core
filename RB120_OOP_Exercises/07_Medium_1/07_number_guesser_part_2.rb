class GuessingGame
  def initialize(min_num, max_num)
    @min_num = min_num
    @max_num = max_num
    @number = (min_num..max_num).to_a.sample
    @guess = nil
    @guesses_left = Math.log2((min_num..max_num).count).to_i + 1
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

  attr_reader :number, :min_num, :max_num
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
      puts "Enter a number between #{min_num} and #{max_num}:"
      answer = gets.chomp.to_i
      break if (min_num..max_num).cover?(answer)
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

game = GuessingGame.new(501, 1500)
game.play