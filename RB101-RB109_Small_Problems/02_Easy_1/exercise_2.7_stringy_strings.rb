#Exercise 2.7

def stringy(integer)
 numbers = []
 integer.times do |number|
  if number.even? then number = 1
  else number = 0
  end
  numbers << number
 end

 numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

#-------Modified to Start with 0-------#

def stringy(integer)
  numbers = []
  integer.times do |number|
   if number.even? then number = 0
   else number = 1
   end
   numbers << number
  end
 
  numbers.join
 end