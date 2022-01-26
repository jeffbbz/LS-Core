#Exercise 4.2

def caps(string)
  if string.length > 10 then string.upcase
  else puts "#{string} is too short!"
  end
end

puts "Gimme a phrase more than 10"
string = gets.chomp
puts caps(string)


