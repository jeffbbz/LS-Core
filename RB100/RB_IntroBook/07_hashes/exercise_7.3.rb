#Exercise 7.3

pizzas_eaten = {
    Larry: 3,
    Danny: 9,
    Ruddy: 2,
    Trandis: 4
}

puts pizzas_eaten.keys
puts pizzas_eaten.values

pizzas_eaten.each do |name, number|
  puts "#{name} ate #{number} pizzas!"
end