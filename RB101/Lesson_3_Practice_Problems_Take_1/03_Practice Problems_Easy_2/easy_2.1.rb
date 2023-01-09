# RB101 Lesson 3: Practice Problems - Easy 2.1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# In this hash of people and their age,see if "Spot" is present.

ages.member?("Spot")

# Bonus: What are two other hash methods that would work just as well for this solution?

ages.key?("Spot")
ages.has_key?("Spot")
ages.include?("Spot")
