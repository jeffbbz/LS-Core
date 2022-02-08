#Exercise 7.5

def car(make, model)
  puts "#{make} #{model}"
end

car("Toyota", "Corolla")

#-----------------

def car(make, model)
  "#{make} #{model}"
end

puts car("Toyota", "Corolla")