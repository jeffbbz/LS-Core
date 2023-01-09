#Exercise 4.6

def xor?(val1, val2)
  val1 == val2 ? false : true
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

xor cannot peform short circuit operations because it must evaluate all values.