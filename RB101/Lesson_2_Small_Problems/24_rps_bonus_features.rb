VALID_CHOICES = %w(rock paper scissors spock lizard)

def prompt(message)
  puts("=> #{message}")
end

def allow_shortcut(input)
  if input == "r"
    "rock"
  elsif input == "p"
    "paper"
  elsif input == "s"
    "scissors"
  elsif input == "sp"
    "spock"
  elsif input == "l"
    "lizard"
  else
    input
  end
end

def loser_choices(user_choice)
  conditions = {  'rock': %w(lizard scissors),
                  'paper': %w(rock spock),
                  'scissors': %w(paper lizard),
                  'spock': %w(scissors rock),
                  'lizard': %w(spock paper) }

  conditions.fetch(user_choice.to_sym)
end

def result_calculation(user_choice, computer_choice, loser_options)
  if user_choice && computer_choice == loser_options[0]
    :win
  elsif user_choice && computer_choice == loser_options[1]
    :win
  elsif user_choice == computer_choice
    :tie
  else
    :lose
  end
end

def display_results(result)
  if result == :win
    prompt("You win :)")
  elsif result == :tie
    prompt("It's a tie!")
  else
    prompt("The computer wins :(")
  end
end

def end_match(user_score, comp_score)
  puts "\n"
  if user_score > comp_score
    prompt("You got 3, You win the match!")
  else
    prompt("The computer got 3, it wins the match!")
  end
  prompt("Care for another match? (Y/N)")
  gets.chomp
end

loop do
  system('clear')

  comp_score_counter = 0
  user_score_counter = 0

  prompt("Welcome to Rock, Paper , Scissors, Spock, Lizard!")
  prompt("First to win 3, wins the match!")

  loop do
    user_choice = ''

    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      prompt("(Type full word or use these shortcuts: r, p, s, sp, l)")
      user_choice = gets.chomp

      user_choice = allow_shortcut(user_choice)

      if VALID_CHOICES.include?(user_choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    puts("You chose: #{user_choice}; Computer chose: #{computer_choice}")

    losing_conditions = loser_choices(user_choice)

    result = result_calculation(user_choice, computer_choice, losing_conditions)

    display_results(result)

    if result == :win
      user_score_counter += 1
    elsif result == :lose
      comp_score_counter += 1
    end

    prompt("Score -> You: #{user_score_counter} Computer: #{comp_score_counter}")

    break if user_score_counter >= 3 || comp_score_counter >= 3

    prompt("Do you want to continue? (Y/N)")
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end

  if user_score_counter >= 3 || comp_score_counter >= 3
    answer = end_match(user_score_counter, comp_score_counter)
    break unless answer.downcase.start_with?('y')
  else
    break
  end
end

prompt("Thank you for playing. Good bye!")
