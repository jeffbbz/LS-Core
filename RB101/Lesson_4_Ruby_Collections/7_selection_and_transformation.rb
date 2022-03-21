produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

# def select_fruit(input_hash)
#   key_array = input_hash.keys
#   value_array = input_hash.values
#   selected_array = []
#   k_counter = 0
#   v_counter = 0

#   loop do
#     current_key = key_array[k_counter]
#     current_value = value_array[v_counter]
  
#     if current_value == 'Fruit'
#       selected_array << [current_key, current_value]

#     end

#     k_counter += 1
#     v_counter += 1
#     break if v_counter == input_hash.length
#   end
#   selected_array.to_h
  
# end

# p select_fruit(produce) 

def select_fruit(input_hash)
  produce_keys = input_hash.keys
  counter = 0
  selected_hash = {}

  loop do
    break if counter == input_hash.length

    current_key = produce_keys[counter]
    current_value = input_hash[current_key]

    if current_value == "Fruit"
      selected_hash[current_key] = current_value
    end

    counter += 1
  end

  selected_hash
end

p select_fruit(produce)