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

  def to_s
    name
  end

  private

  def full_name(full_name)
    full_name = full_name.split
    @first_name = full_name.first
    @last_name = full_name.size != 1 ? full_name.last : ''
  end
end

bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"

# => Without override of built-in to_s : The person's name is: #<Person:0x00007ff1c8814c20>
# => With override of built-in to_s : The person's name is: Robert Smith