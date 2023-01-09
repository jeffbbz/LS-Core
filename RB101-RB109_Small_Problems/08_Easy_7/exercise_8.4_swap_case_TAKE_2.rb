# Exercise 8.4

def swapcase(string)
  swapped = string.split.map do |word|
              word.chars.map do |char|
                char.match?(/[A-Z]/) ? char.downcase : char.upcase
              end
            end
  swapped.map(&:join).join(" ")
end

# or better

def swapcase(string)
  swapped = string.chars.map do |char|
              char =~ /[A-Z]/ ? char.downcase : char.upcase
            end
  swapped.join
end


p swapcase('CamelCase') #== 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') #== 'tONIGHT ON xyz-tv'