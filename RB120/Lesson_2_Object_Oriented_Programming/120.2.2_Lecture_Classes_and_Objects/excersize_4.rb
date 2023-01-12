class Person
  attr_accessor :first_name, :last_name
  
  def initialize(name)
    full_name(name)
  end

  def name
    first_name + ' ' + last_name
  end

  def name=(name)
    full_name(name)
  end

  private

  def full_name(full_name)
    full_name = full_name.split
    @first_name = full_name.first
    @last_name = full_name.size != 1 ? full_name.last : ''
  end
end

bob = Person.new('Robert Smith')
rob = Person.new('Robert Smith')

puts bob.name == rob.name