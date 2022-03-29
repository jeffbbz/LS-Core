[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  hash.transform_values do |value|
    value += 1
  end
end

# or 

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  incremented_hash = {}
  hash.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end

# or

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].each_with_object([]) do |hash, arr|
  incremented_hash = {}
  hash.each do |key, value|
    incremented_hash[key] = value + 1
  end
  arr << incremented_hash
end


