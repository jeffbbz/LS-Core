class Animal
  def initialize(diet, superpower)
    @diet = diet
    @superpower = superpower
  end

  def move
    puts "I'm moving!"
  end

  def superpower
    puts "I can #{@superpower}!"
  end
end

class Fish < Animal
  def move
    puts "I'm swimming!"
  end
end

class Bird < Animal
end

class FlightlessBird < Bird
  def initialize(diet, superpower)
    super
  end

  def move
    puts "I'm running!"
  end
end

class SongBird < Bird
  # def initialize(diet, superpower, song)
  #   super
  #   @song = song
  # end

  def initialize(diet, superpower, song)
    super(diet, superpower)
    @song = song
  end

  def move
    puts "I'm flying!"
  end
end

# Examples

unicornfish = Fish.new(:herbivore, 'breathe underwater')
penguin = FlightlessBird.new(:carnivore, 'drink sea water')
robin = SongBird.new(:omnivore, 'sing', 'chirp chirrr chirp chirp chirrrr')

=begin
  
On line 50, a new `Songbird` class instance is instantiated and passed three argurments. `Songbird` is a
subclass of the `Bird` class, and the `Bird` class is a subclass of the `Animal` Superclass. When a new
`Songbird` class object is instantiated, its `Songbird#initialize` constructor method one lines 36-39 is automatically
invoked. However, line 37 invokes `super`, which by default (without any explicitly passed arguments)
will implicitly pass all method parameters, in this case three: `diet`, `superpower`, `song`, which reference
the three arguments passed in upon instantiation on line 50 (`:omnivore`, `'sing'`, `'chirp chirrr chirp chirp chirrrr'`).
However, the `super` invocation will will attempt to execute the `Animal#initialize` constructor method on
on lines 2-5, but this method only takes 2 arguments. Therefore, an `ArgumentError` exception will be raised.

We can solve this issue by explicitly passing in the first two parameteres on line 36 as arguments to
`super`on on line 37. This can be seen in the new method placed below the commented out method.

=end

# Further Exploration

=begin
  
No, `FlightlessBird#initialize` constructor method is not necessary, at least in the code as written here.
It does the exact same thing as `Animal#initialize` and even invokes super to do so.

=end