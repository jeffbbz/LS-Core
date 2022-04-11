# Exercise 8.4

def swapcase(string)
  swapped = string.chars.map do |char|
    ('a'..'z').cover?(char) ? char.upcase : char.downcase
  end
  swapped.join
end

p swapcase('CamelCase')# == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV')# == 'tONIGHT ON xyz-tv'

# or

def swapcase(string)
  swapped = string.chars.map do |char|
    char =~ /[a-z]/ ? char.upcase : char.downcase
  end
  swapped.join
end

p swapcase('CamelCase')# == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV')# == 'tONIGHT ON xyz-tv'