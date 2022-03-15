# Exercise 6.9

# def crunch(string)
#   string = string.split.map { |string| string.chars }
#   string = string.each {|char| char.uniq! }
#   string.map! {|array| array.join}
#   string.join(" ")
# end

def crunch(string)
  index = 0
  crunch_text = ''
  while index <= string.length - 1
    crunch_text << string[index] unless string[index] == string[index + 1]
    index += 1
  end
  crunch_text
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
p crunch('')
