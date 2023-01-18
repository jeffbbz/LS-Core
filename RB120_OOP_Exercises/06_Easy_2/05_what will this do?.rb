class Something
  def initialize
    @data = 'Hello'
  end

  def dupdata
    @data + @data
  end

  def self.dupdata
    'ByeBye'
  end
end

thing = Something.new
puts Something.dupdata # => ByeBye
puts thing.dupdata # => HelloHello



=begin

On line 15 a new instance of the `Something` class is instanitated and assigned to
be referenced by local variable `thing`. On line 16 the Something::self.dupdata class method 
(defined on lines 10-12) is called, which returns the string `byebye` and this return
value is passed to the `puts` method call of the same line which outputs that string to
console.

Line 17 thing invokes `Something#dupdata` instance method (defined on lines 6-8) which
concatentes the value referenced by `@data` instance variable to itself. `@data` references
the string object "Hello" because it was initialized thusly on line 3 (in the `initialize` method)
upon instantiation of the `thing` `Something` class object. So when concatenated the return
value is "HelloHello" which is then passed to Kernel#puts for output to screen.

=end