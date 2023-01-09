# Small Problems > Easy 9 > Uppercase Check

def uppercase?(string)
  string.match?(string.upcase)
end

def uppercase?(string)
  !string.match?(/[a-z]/)
end

def uppercase?(string)
  !string.match?(/[[:lower:]]/)
end

def uppercase?(string)
  string == string.upcase
end

def uppercase?(string)
  (string <=> string.upcase) == 0
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true