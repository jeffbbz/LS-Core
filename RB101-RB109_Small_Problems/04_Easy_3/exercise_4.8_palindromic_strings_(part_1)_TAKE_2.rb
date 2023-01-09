# Exercise 4.8

def palindrome?(string)
  string == string.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

# Without String#reverse

def palindrome?(string)
  first_idx = 0
  last_idx = -1
  palin = 0

  loop do
    break if (first_idx >= string.length) || (palin == false)
    palin = string[first_idx] == string[last_idx]
    first_idx += 1
    last_idx -= 1
  end
  palin
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true


# Further Exploration 1 

def arr_palindrome?(array)
  array == array.reverse
end

p arr_palindrome?([1, 2, 3, 2, 1]) == true
p arr_palindrome?([1, 4, 5, 6]) == false

# Further Exploration 2

def any_palindrome?(input)
  input == input.reverse
end

p any_palindrome?([1, 2, 3, 2, 1]) == true
p any_palindrome?('Madam') == false
p any_palindrome?('356653') == true
p arr_palindrome?([1, 4, 5, 6]) == false
