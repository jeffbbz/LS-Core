# RB101 Lesson 3: Practice Problems - Hard 1.2

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # => {:a=>"hi there"}

# The value in the key/value pair has been modified by String#<< method. This modifies the object
# that its called on. Both informal_greeting and greetings[:a] have the same object id and so the
# object they reference mutates and they both reference that same mutated object.

