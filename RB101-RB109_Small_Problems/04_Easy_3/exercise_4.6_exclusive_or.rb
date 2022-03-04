#Exercise 4.6

def xor?(v1, v2)
  (!!v1 && !v2) || (!v1 && !!v2)
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)