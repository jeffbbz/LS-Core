ages = { 
  "Herman"  => 32, 
  "Lily"    => 30, 
  "Grandpa" => 5843, 
  "Eddie"   => 10, 
  "Marilyn" => 22, 
  "Spot"    => 237 
}

# Long Loop/Counter Style

ages_array = ages.values
minimum_age = ages_array[0]
counter = 0

loop do
  break if counter == ages.length

  current_age = ages_array[counter]
  
  if current_age < minimum_age
    minimum_age = current_age
  end

  counter += 1
end

p minimum_age

# Quick with Hash#values and Array#min

p ages.values.min
