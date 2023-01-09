#Exercise 2.5

def reverse_sentence(string)
  p string.split.reverse.join(" ")
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# Take 2

# short way

def reverse_sentence(sentence)
  sentence.split.reverse.join(" ")
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# or without reverse/with loop

def reverse_sentence(sentence)
  reversed = []
  not_reversed = sentence.split
  count = not_reversed.length
  
  loop do
    break if count == 0
    reversed.push(not_reversed.pop)
    count -= 1
  end
  reversed.join(" ")
end

puts reverse_sentence('Hello World')# == 'World Hello'
puts reverse_sentence('Reverse these words')# == 'words these Reverse'
puts reverse_sentence('')# == ''
puts reverse_sentence('    ')# == '' # Any number of spaces results in ''

# or without reverse/with cycle

def reverse_sentence(sentence)
  reversed = []
  not_reversed = sentence.split
  not_reversed.cycle(not_reversed.length) do |element| 
    reversed.push(not_reversed.pop)
  end
  reversed.join(" ")
end

puts reverse_sentence('Hello World')# == 'World Hello'
puts reverse_sentence('Reverse these words')# == 'words these Reverse'
puts reverse_sentence('')# == ''
puts reverse_sentence('    ')# == '' # Any number of spaces results in ''

# or without reverse/with times

def reverse_sentence(sentence)
  reversed = []
  not_reversed = sentence.split
  (not_reversed.length).times do
    reversed.push(not_reversed.pop)
  end
  reversed.join(" ")
end

puts reverse_sentence('Hello World')# == 'World Hello'
puts reverse_sentence('Reverse these words')# == 'words these Reverse'
puts reverse_sentence('')# == ''
puts reverse_sentence('    ')# == '' # Any number of spaces results in ''