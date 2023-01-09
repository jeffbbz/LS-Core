#Exercise 2.1

def repeat(string, number)
  number.times { puts string }
end

repeat('Cool String', 12)

# Take 2

def repeat_with_times(string, number)
  number.times { puts string }
end

repeat_with_times('Hello', 3)

# or

def repeat_with_loop(string, number)
  loop do
    puts string
    number -= 1
    break if number == 0
  end
end

repeat_with_loop('Hello', 3)