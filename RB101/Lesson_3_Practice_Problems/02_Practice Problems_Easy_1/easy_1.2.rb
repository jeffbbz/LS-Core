# RB101 Lesson 3: Practice Problems - Easy 1.2

question = <<QUESTION

Describe the difference between ! and ? in Ruby. 
And explain what would happen in the following scenarios:

1. what is != and where should you use it?
2. put ! before something, like !user_name
3. put ! after something, like words.uniq!
4. put ? before something
5. put ? after something
6. put !! before something, like !!user_name


QUESTION

answer = <<ANSWER

1. what is != and where should you use it?

  != is the not equals operator. You can use it anytime you want to compare if an
  object is equal or not equal to another object.

2. put ! before something, like !user_name

  An object with the ! prepended to it will return the opposite of its boolean equivalent
  (Truthy objects will return false...)

3. put ! after something, like words.uniq!

  It's just part of the method name, but in Ruby an appended ! is often (but not always) 
  used to denote when a method is mutating, or causes changes to its caller. In other 
  words, a method like Array#uniq! might not return a new array, but would mutate 
  the words collection object.

4. put ? before something

  ? : is the ternary operator for if...else

5. put ? after something

  It's just part of the method name, but an appended ? is often (but not always) 
  used to denote when a method returns a boolean T/F.

6. put !! before something, like !!user_name

  An object with the !! prepended to it will return its boolean equivalent (Truthy objects
  will return true...)

ANSWER