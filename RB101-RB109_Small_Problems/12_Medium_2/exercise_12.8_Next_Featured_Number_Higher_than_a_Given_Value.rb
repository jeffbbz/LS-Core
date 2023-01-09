# Small Problems > Medium 2 > Next Featured Number Higher than a Given Value

def featured(number)
  next_multiple = (number - (number % 7)) + 7
  feat = (next_multiple.odd? ? next_multiple : next_multiple + 7)
  feat += 14 until feat.digits.size == feat.digits.uniq.size || feat >= 9876543210
  feat < 9_876_543_210 ? feat : "Sorry there is no available number!"
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements