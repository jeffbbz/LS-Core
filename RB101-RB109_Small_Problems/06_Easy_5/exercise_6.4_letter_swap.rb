# #Exercise 6.4

def swap_chars(array)
  swap_char_array = array.each do |a|
    last = a.pop
    a = a.push(a.shift).unshift(last)
    a.reject! { |element| element == nil }
  end
  swap_char_array
end

def swap(string)
  string_arr = string.split.map { |string| string.chars }
  swap_chars(string_arr)
  string_arr.map! { |array| array.join}
  string_arr.join(" ")
end

p swap('Oh what a wonderful day it is')
p swap('Abcde')
p swap('a')

# Much clearer, easier example answer with multiple reassignment

def swap_chars(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(string)
  words = string.split.map { |word| swap_chars(word) }
  words.join(' ')
end

p swap('Oh what a wonderful day it is')
p swap('Abcde')
p swap('a')





