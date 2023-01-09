# Small Problems > Easy 5 > Letter Swap

def swap(string)
  words = string.split
  first_chars = words.map { |word| word[0] }
  words.map do |word|
    word[0] = word[-1] 
    word[-1] = first_chars.shift
    word
  end.join(" ")
end

p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'

# or

def swap(string)
  words = string.split.map do |word|
            word[0], word[-1] = word[-1], word[0]
            word
          end
  words.join(" ")
end

p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'