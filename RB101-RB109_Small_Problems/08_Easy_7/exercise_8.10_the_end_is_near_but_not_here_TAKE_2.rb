# Exercise 9.10

# easy way with an array using split

def penultimate(string)
  string.split[-2]
end

# absurd way keeping it as a string and using rindex

def penultimate(string)
  last_space_index = string.rindex(" ")
  final_index = string.length - 1
  reverse_index_last_space = -(final_index - last_space_index) - 1
  space_before_word_index = string.rindex(" ", reverse_index_last_space - 1)
  
  if space_before_word_index == nil
    string[0..reverse_index_last_space -1]
  else
    string[(space_before_word_index + 1)..(reverse_index_last_space - 1)]
  end
end

p penultimate('last word') #== 'last'
p penultimate('Launch School is great!') #== 'is'
p penultimate('I like gravy and wrongs')
p penultimate('Where are my tired hands?')

# Further exploration: Find middle word plus edge cases

def middle_sub(string)
  arr = string.split
  arr_size = arr.length
  return string if arr_size < 2
  arr_size.odd? ? arr[arr_size/2] : arr[(arr_size/2 - 1)]
end

p middle_sub('last word') #== 'last'
p middle_sub('Launch School is great!') #== 'is'
p middle_sub('Launch School so is great!') #== 'so'
p middle_sub('Where are my great cool deeds and majestic swans') #== 'cool'
p middle_sub('') #== ''
p middle_sub('Where') #== 'Where'