# RB101 Lesson 3: Practice Problems - Easy 1.6

famous_words = "seven years ago..."

# Show two different ways to put the expected "Four score and " in front of it.

famous_words.prepend("Four score and ")

# or

famous_words.insert(0, "Four score and ")

# or

"Four score and " + famous_words

# or

"Four score and " << famous_words