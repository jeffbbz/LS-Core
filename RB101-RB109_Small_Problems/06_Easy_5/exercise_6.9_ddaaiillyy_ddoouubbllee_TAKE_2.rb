# Exercise 6.9

# def crunch(string)
#   index = 0
#   crunched = ""

#   while index <= string.length - 1
#     crunched << string[index] unless string[index] == string[index+1]
#     index += 1
#   end
#   crunched
# end

def crunch2(string)
  string.chars.each_with_object([]) do |char, arr|
    arr << char if char != arr.last
  end.join
end

p crunch2('ddaaiillyy ddoouubbllee')
p crunch2('4444abcabccba')
p crunch2('ggggggggggggggg')
p crunch2('a')
p crunch2('')

