# Small Problems > Medium 2 > Lettercase Percentage Ratio

# With added FE rounding

def letter_percentages(string)
  hash = {}
  total = string.size.to_f
  hash[:lowercase] = ((string.count("a-z") / total) * 100).round(1)
  hash[:uppercase] = ((string.count("A-Z") / total) * 100).round(1)
  hash[:neither] = ((string.count("^a-zA-Z") / total) * 100).round(1)
  hash
end

p letter_percentages('abCdef 123') #== { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') #== { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')