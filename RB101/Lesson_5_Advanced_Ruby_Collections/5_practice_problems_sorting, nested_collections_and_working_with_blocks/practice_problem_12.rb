arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

arr.each_with_object({}) do |sub_arr, hash|
  hash[sub_arr[0]] = sub_arr[1]
end

# or

new_hash = {}
arr.each do |sub_arr|
  new_hash[sub_arr[0]] = sub_arr[1]
end

new_hash
