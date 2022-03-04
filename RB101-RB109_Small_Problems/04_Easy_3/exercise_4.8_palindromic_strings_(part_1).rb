# Exercise 4.8

def palindrome?(value)
  value.reverse.eql?(value)
end

p palindrome?('madam')
p palindrome?('Madam')          
p palindrome?("madam i'm adam")
p palindrome?('356653')
p palindrome?([1, 3, 5, 6, 5, 3, 1])
p palindrome?([1, 3, 5, 6, 3, 6, 7])



