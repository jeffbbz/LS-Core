# RB101 Lesson 3: Practice Problems - Easy 2.7

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# How can we add multiple items to our array? (Dino and Hoppy)

flintstones.push("Dino", "Hoppy")

# or

flintstones.push("Dino").push("Hoppy")

# or

flintstones.concat(["Dino", "Hoppy"])

# or

flintstones.concat(%w(Dino Hoppy))