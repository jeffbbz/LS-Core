ages = { 
  "Herman"  => 32, 
  "Lily"    => 30, 
  "Grandpa" => 5843, 
  "Eddie"   => 10, 
  "Marilyn" => 22, 
  "Spot"    => 237 
}

# Most Straight Forward with Hash#delete_if

ages.delete_if { |name, age|  age >= 100 }

# More common method with Hash#select and #select!

ages = ages.select { |name, age| age < 100 }

or

ages.select! { |name, age| age < 100 }

# Also possible with Hash#keep_if

ages.keep_if { |name, age| age < 100 }