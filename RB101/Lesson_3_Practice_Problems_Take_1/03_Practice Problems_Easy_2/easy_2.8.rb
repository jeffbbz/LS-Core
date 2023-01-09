# RB101 Lesson 3: Practice Problems - Easy 2.8

advice = "Few things in life are as important as house training your pet dinosaur."

# Shorten the sentence

advice.slice!(0..38)

# or

advice.slice!(0, 39) 

# or perhaps better:

advice.slice!(0, advice.index('house'))

# As a bonus, what happens if you use the String#slice method instead?

# The String#slice method returns a new string with the same value as slice!
# but does not modify the String object referencd by the advice variable.