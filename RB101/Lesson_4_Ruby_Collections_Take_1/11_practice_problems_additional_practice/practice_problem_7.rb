# With Array#each

statement = "The Flintstones Rock"
char_statement = statement.gsub(' ', '').chars
letter_count = {}

char_statement.each do |letter|
  if letter_count.key?(letter)
    letter_count[letter] += 1
  else
    letter_count[letter] = 1
  end
end

p letter_count

# With a Loop/Counter

statement = "The Flintstones Rock"

char_statement = statement.gsub(' ', '').chars
counter = 0
letter_count = {}

loop do
  break if counter == char_statement.length

  current_letter = char_statement[counter]
  if letter_count.key?(current_letter)
    letter_count[current_letter] += 1
  else
    letter_count[current_letter] = 1
  end
  counter += 1
end

p letter_count

# example answer with Array#each and String#count

statement = "The Flintstones Rock"
letter_count = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  letter_count[letter] = letter_frequency if letter_frequency > 0
end

p letter_count