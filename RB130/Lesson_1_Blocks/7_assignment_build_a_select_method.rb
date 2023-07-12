def select(array)
  counter = 0
  new_arr = []

  while counter < array.size
    new_arr << array[counter] if yield(array[counter])
    counter += 1
  end
  new_arr
end

array = ["hat", "dog", "house"]

p select(array) { |word| word.size == 3 }      # => [1, 3, 5]
p select(array) { |word| word.start_with?('h') }      # => [], because "puts num" returns nil and evaluates to false
