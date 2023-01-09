# Small Problems > Debugging > Number Guessing Game

[Link to Problem](https://launchschool.com/exercises/8adca098)

```ruby
def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number

      # Try again:
      guess_number(max_number, max_attempts)
    end
  end
end

guess_number(10, 3)
```



## The Problem

The program works if you get the number right on the first try (if the if condition on line 21) evaluates to true. However if it evaluates to false because you guessed wrong, the guess_number method is recursively called again for your next try. But this causes the winning_number variable to be re-assigned to a new random number on each failed attempt.

Additionally, even if you guess the winning number on the first try, you still must guess it three times because the break condition for the loop is not met until the attempts counter is equal to the given attempts argument and that counter is only incremented by 1 each time regardless of guess correctness.


To fix the first issue we simply remove the recursive call. To fix the second issue, we can do many things but the easiest is to add a break statement to the if condition on line 23.

```ruby
def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      break
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number
    end
  end
end

guess_number(10, 3)
```
