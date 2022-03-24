# Solution 1: Enumerable#each_with_index method

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flint_hash = {}
flintstones.each_with_index { |name, index| flint_hash[name] = index }

p flint_hash

# Solution 2: With Loop and Counter

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flint_hash = {}
index = 0

loop do
  break if index == flintstones.length
  
  current_name = flintstones[index]
  flint_hash[current_name] = index
  
  index += 1
end

p flint_hash


