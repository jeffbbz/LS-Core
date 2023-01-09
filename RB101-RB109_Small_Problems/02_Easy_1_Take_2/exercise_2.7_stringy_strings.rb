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

 # Take 2

def stringy(length)
  string = ""
  if length.even?
    length = length / 2
    length.times { string << 10.to_s }
  else
    length = (length - 1) /2
    length.times { string << 10.to_s }
    string << 1.to_s
  end
  string
end

puts stringy(6) #== '101010'
puts stringy(9) #== '101010101'
puts stringy(4) #== '1010'
puts stringy(7) #== '1010101'
puts stringy(3) #== '101'
puts stringy(1) #== '1'

# or

def stringy(length)
  string = ""

  length.times do |index|
    number = index.even? ? 1.to_s : 0.to_s
    string << number
  end
  string
end

puts stringy(6) #== '101010'
puts stringy(9) #== '101010101'
puts stringy(4) #== '1010'
puts stringy(7) #== '1010101'
puts stringy(3) #== '101'
puts stringy(1) #== '1'

# Further Exploration, Optional Zero Start

def stringy(length, start_num=1)
  string = ""

  length.times do |index|
    if start_num == 1
      number = index.even? ? 1.to_s : 0.to_s
    else
      number = index.odd? ? 1.to_s : 0.to_s
    end
    string << number
  end
  string
end

puts stringy(6, 0) #== '101010'
puts stringy(9) #== '101010101'
puts stringy(4) #== '1010'
puts stringy(7, 0) #== '1010101'
puts stringy(3) #== '101'
puts stringy(1) #== '1'

# or 

def stringy(length, start_num=1)
  string = ""
  if start_num == 1
    if length.even?
      length = length / 2
      length.times { string << 10.to_s }
    else
      length = (length - 1) /2
      length.times { string << 10.to_s }
      string << 1.to_s
    end
    string
  else
    if length.even?
      length = length / 2
      length.times { string << 01.to_s }
    else
      length = (length - 1) /2
      length.times { string << 01.to_s }
      string << 0.to_s
    end
    string
end

puts stringy(6, 0) #== '101010'
puts stringy(9) #== '101010101'
puts stringy(4) #== '1010'
puts stringy(7, 0) #== '1010101'
puts stringy(3) #== '101'
puts stringy(1) #== '1'