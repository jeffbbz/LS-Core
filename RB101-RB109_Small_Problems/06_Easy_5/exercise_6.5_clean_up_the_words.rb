#Exercise 6.5

def cleanup(string)
  string.gsub(/\W/, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?")

# Example Answer

ALPHABET = ('a'..'z'.to_a)

arr = []
def cleanup(string)
  string.chars.each do |char|
    if ALPHABET.include?(char)
      arr << char
    else
      arr << ' ' unless arr.last == ' '
    end
  end
  arr.join
end

p cleanup("---what's my +*& line?")