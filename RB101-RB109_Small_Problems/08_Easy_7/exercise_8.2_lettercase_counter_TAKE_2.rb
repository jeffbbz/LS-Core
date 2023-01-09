# Small Problems > Easy 7 > Lettercase Counter

def letter_case_count(string)
  hash = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |char|
    hash[:lowercase] += 1 if char.match?(/[a-z]/)  
    hash[:uppercase] += 1 if char.match?(/[A-Z]/)
    hash[:neither] += 1 if char.match?(/[^a-zA-Z]/)
  end
  hash
end

# or

def letter_case_count(string)
  hash = {}
  hash[:lowercase] = string.scan(/[a-z]/).length
  hash[:uppercase] = string.scan(/[A-Z]/).length
  hash[:neither] = string.scan(/[^a-zA-Z]/).length
  hash
end

p letter_case_count('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') #== { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') #== { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') #== { lowercase: 0, uppercase: 0, neither: 0 }