# 1. Write a method that returns true if the string passed as an argument is a palindrome or false otherwise.

# def palindrome?(string)
#   # First Attempt
#   # palindrome = string.chars
#   # rev_palindrome = palindrome.reverse
#   # palindrome == rev_palindrome
  
#   # Re-Factor with array
#   # string.chars.reverse == string.chars

#   # Actually Don't need an array right?
#   string.reverse == string

# end

# p palindrome?('tacocat')
# p palindrome?('spaghetticat')
# p palindrome?('taco cat')
# p palindrome?('tac0cat')
# p palindrome?('taco.cat')
# p palindrome?('')
# p palindrome?('t')

# 2. Given a string, produce a new string with every other word removed.

def every_other_word(text)
  other_words = []
  text.split.each_with_index do |word, index|
    other_words << word unless index.odd?
  end
  other_words.join(" ")
end

p every_other_word("hat hand milk")
p every_other_word("branch march fungus dark rod")
p every_other_word("")
p every_other_word("hat")