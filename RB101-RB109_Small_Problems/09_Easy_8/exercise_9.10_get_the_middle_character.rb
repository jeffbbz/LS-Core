# Small Problems > Easy 8 > Get The Middle Character

def center_of(string)
  if string.length.odd?
    string[string.length / 2]
  else
    string[((string.length - 1) / 2), 2]
  end
end

def center_of(string)
  odd_mid_idx = (string.length - 1) / 2
  string.length.odd? ? string[odd_mid_idx] : string[odd_mid_idx, 2]
end

p center_of('I love ruby') #== 'e'
p center_of('Launch School') #== ' '
p center_of('Launch') #== 'un'
p center_of('Launchschool') #== 'hs'
p center_of('x') #== 'x'