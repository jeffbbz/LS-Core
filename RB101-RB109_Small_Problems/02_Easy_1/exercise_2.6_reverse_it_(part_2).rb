#Exercise 2.6

def reverse_words (string)
  string = string.split

  string.each do |word|
    word.reverse! if word.size >= 5
  end
  
  string.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS