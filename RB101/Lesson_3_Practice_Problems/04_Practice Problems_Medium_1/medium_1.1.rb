# RB101 Lesson 3: Practice Problems - Medium 1.1

10.times { |i| puts (" " * i) + "The Flintstones Rock!"}

# or

10.times { |i| puts (" " * i) << "The Flintstones Rock!"}

# or

10.times { |i| puts "The Flintstones Rock!".prepend(" " * i)}

# or

10.times { |i| puts "The Flintstones Rock!".insert(0, " " * i)}