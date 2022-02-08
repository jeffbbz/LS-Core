#Exercise 8.8

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# 0 1 2 3 4 10. #times returns 0-4 but its not the last line anymore, 10 is
# so 10 has an implicit return and get put at the end of puts count_sheep