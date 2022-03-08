# RB101 Lesson 3: Practice Problems - Hard 1.1

# What do you expect to happen when the greeting variable is referenced 
# in the last line of the code below?

if false
  greeting = "hello world"
end

greeting

#=> nil. When you initialize a variable in an if block but that block is not executed, the
# variable tiwll be initialized to nil. Not an error.