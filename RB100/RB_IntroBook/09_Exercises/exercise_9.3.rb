#Exercise 9.3

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odd_array = array.select! { |num| num.odd? }

p odd_array