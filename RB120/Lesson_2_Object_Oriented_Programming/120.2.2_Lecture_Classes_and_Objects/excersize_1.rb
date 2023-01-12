# with attr_accessor

class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

# with attr_reader & writer (unnessecary but for practice)

# class Person
#   attr_reader :name
#   attr_writer :name

#   def initialize(name)
#     @name = name
#   end
# end

# with writen out getter & setter methods for practice

# class Person
#   def initialize(name)
#     @name = name
#   end

#   def name
#     @name
#   end

#   def name=(name)
#     @name = name
#   end
# end

bob = Person.new('bob')
puts bob.name
bob.name = 'Robert'
puts bob.name
