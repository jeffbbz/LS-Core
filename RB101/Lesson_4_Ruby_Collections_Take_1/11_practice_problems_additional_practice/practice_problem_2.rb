ages = { 
  "Herman"  => 32, 
  "Lily"    => 30, 
  "Grandpa" => 5843, 
  "Eddie"   => 10, 
  "Marilyn" => 22, 
  "Spot"    => 237 
}

# 1. using Hash#map

combined_ages = []

ages.map { |name, age| combined_ages << age }

p combined_ages.sum

# 2. using Hash#each

all_ages = 0

ages.each { |name, age| all_ages += age }

p all_ages

# 3. Most concise using built in methods

p ages.values.sum

# 4. Using Loop and Counter

age_array = ages.values
combined_ages = 0
counter = 0

loop do
  break if counter == age_array.length
 
  combined_ages += age_array[counter]

  counter += 1
end

p combined_ages