class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end

  def personal_greeting
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')

Cat.generic_greeting
kitty.personal_greeting

=begin

Lines 8-10 we've defined the Cat::generic_greeting class method.
Class methods are prepended with `self.` and are general behavoirs
that any class object will perform in the same way. They do not
deal with the specific states of class instances.

Lines 12-14 we've defined the Cat#personal_greeting instance method.
Instance methods are usuable by any class object but perform some
behavior in a dynamic, state dependant manner for different objects.

=end