# Exercise 6.6

def word_sizes_with_tally(string)
  count = string.split.map { |word| word.length }
  count.tally
end

p word_sizes_with_tally('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes_with_tally('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes_with_tally("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes_with_tally('') == {}

def word_sizes_with_ewo(string)
  count = string.split.map { |word| word.length }
  count.each_with_object({}) do |num, hash|
    hash[num] = count.count(num)
  end
end

p word_sizes_with_ewo('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes_with_ewo('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes_with_ewo("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes_with_ewo('') == {}

def word_sizes(string)
  count = Hash.new(0)
  string.split.each { |word| count[word.length] += 1 }
  count
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}













