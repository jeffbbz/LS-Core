class Person
  attr_accessor :first_name, :last_name
  
  def initialize(name)
    full_name = name.split
    @first_name = full_name.first
    @last_name = full_name.size != 1 ? full_name.last : ''
  end

  def name
    first_name + ' ' + last_name
  end
end

bob = Person.new('Robert')
puts bob.name                  # => 'Robert'
puts bob.first_name            # => 'Robert'
puts bob.last_name             # => ''
bob.last_name = 'Smith'
p bob.name                  # => 'Robert Smith'
