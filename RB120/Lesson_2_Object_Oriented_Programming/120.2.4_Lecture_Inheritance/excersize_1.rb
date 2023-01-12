class Dog
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end
end

class Bulldog < Dog
  def swim
    "can't swim!"
  end
end

teddy = Dog.new
dowdree = Bulldog.new
puts teddy.speak           # => "bark!"
puts teddy.swim           # => "swimming!"
puts dowdree.speak
puts dowdree.swim

# `dowdree`, the Bulldog object, inherits from Dog so has access
# to its `speak` and `swim` instance methods, but it overrides
# the `swim` method with its own `swim` instance method. So
# line 21 calls Dog#speak but line 22 calls Bulldog#swim.