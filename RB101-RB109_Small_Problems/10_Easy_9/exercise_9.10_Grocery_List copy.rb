# Small Problems > Easy 9 > Grocery List

# convert to hash then #each_with_object and #times

def buy_fruit(array)
  array.to_h.each_with_object([]) do |(fruit, quantity), arr|
    quantity.times { arr << fruit }
  end
end

# another way that is kinda goofy with Array#transpose

def buy_fruit(array)
  array = array.transpose
  index = 0
  array[0].each_with_object([]) do |element, new_arr|
      array[1][index].times { new_arr << element }
      index += 1
  end
end

# just using #each_with_object and times but maybe harder to read than the first one?

def buy_fruit(array)
  array.each_with_object([]) do |sub_arr, arr|
    sub_arr[1].times { arr << sub_arr[0] }
  end
end

# same but easier to read?

def buy_fruit(array)
  array.each_with_object([]) do |(fruit, quantity), arr|
    quantity.times { arr << fruit }
  end
end

# basically same but also  easier to read?

def buy_fruit(array)
  arr = []
  array.each do |fruit, quantity|
    quantity.times { arr << fruit }
  end
  arr
end

# with #map and #flatten

def buy_fruit(array)
  array.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
  #["apples", "apples", "apples", "orange", "bananas","bananas"]