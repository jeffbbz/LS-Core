# Small Problems > Easy 9 > Welcome Stranger

def greetings(arr, hash)
  name = arr.join(" ")
  job = hash[:title] + " " + hash[:occupation]
  "Hello, #{name}! Nice to have a #{job} around."
end

# or with Hash#values + Array#join

def greetings(arr, hash)
  name = arr.join(" ")
  job = hash.values.join(" ")
  "Hello, #{name}! Nice to have a #{job} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."