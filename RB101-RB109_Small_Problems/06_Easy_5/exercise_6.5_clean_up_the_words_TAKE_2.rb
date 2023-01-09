# Small Problems > Easy 5 > Clean up the words

def cleanup_with_gsub(string)
  string.gsub(/\W/, " ").squeeze(" ")
end

p cleanup_with_gsub("---what's my +*& line?") #== ' what s my line '

ALPHABET = ("a".."z").to_a

def cleanup(string)
  chars = []
  string.chars.each do |char|
    if ALPHABET.include?(char)
      chars.push(char)
    else
      chars << " " unless chars.last == " "
    end
  end
  chars.join
end

p cleanup("---what's my +*& line?") #== ' what s my line '


















