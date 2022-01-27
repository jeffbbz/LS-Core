#Exercise 6.7

foods = ["corn", "pizza", "corn flavored pizza", "pizza flavored corn"]

foods.each_with_index { |val, index| puts "#{index} -> #{val}" }