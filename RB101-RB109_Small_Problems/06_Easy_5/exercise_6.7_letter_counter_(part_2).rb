# Exercise 6.7

def count_array_to_hash(count_array)
  new_array = []
  count_array.each { |num| new_array << [num, count_array.count(num)] }
  new_array.to_h
end

def word_sizes(string)
  string.delete! "^a-zA-Z "
  count = string.split.map { |word| word.size }
  count_array_to_hash(count)
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')

# or way better example answer

def word_sizes(string)
  count_hash = Hash.new(0)
  string.delete! "^a-zA-Z "
  string.split.each { |word| count_hash[word.size] += 1 }
  count_hash
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')