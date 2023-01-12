class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    "I'm #{name}!"
  end
end

kitty = Cat.new('Sophie')
puts kitty

# Adding a custom to_s to our class allows us to override the built-in
# functionality of to_s for our own behavior when we invoke Kernel#puts
# which calls to_s as part of its execution.