# class Owner
#   attr_reader :name, :pets
  
#   def initialize(name)
#     @name = name
#     @pets = []
#   end

#   def adopt_pet(pet)
#     @pets << pet
#   end

#   def number_of_pets
#     pets.size
#   end
# end

# class Pet
#   attr_reader :type, :name
  
#   def initialize(type, name)
#     @type = type
#     @name = name
#   end
# end

# class Shelter
#   @@shelter_inventory = {"Asta" => "dog"}
  
#   def initialize
#     @owners = []
#   end
  
#   def adopt(owner, pet)
#     owner.adopt_pet(pet)
#     @owners << owner unless @owners.include?(owner)
#   end

#   def print_adoptions
#     @owners.each do |owner|
#       puts "#{owner.name} has adopted the following pets:"
#       owner.pets.each do |pet|
#         puts "a #{pet.type} named #{pet.name}"
#       end
#       puts
#     end
#   end
# end

# butterscotch = Pet.new('cat', 'Butterscotch')
# pudding      = Pet.new('cat', 'Pudding')
# darwin       = Pet.new('bearded dragon', 'Darwin')
# kennedy      = Pet.new('dog', 'Kennedy')
# sweetie      = Pet.new('parakeet', 'Sweetie Pie')
# molly        = Pet.new('dog', 'Molly')
# chester      = Pet.new('fish', 'Chester')

# phanson = Owner.new('P Hanson')
# bholmes = Owner.new('B Holmes')

# shelter = Shelter.new
# shelter.adopt(phanson, butterscotch)
# shelter.adopt(phanson, pudding)
# shelter.adopt(phanson, darwin)
# shelter.adopt(bholmes, kennedy)
# shelter.adopt(bholmes, sweetie)
# shelter.adopt(bholmes, molly)
# shelter.adopt(bholmes, chester)
# shelter.print_adoptions
# puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
# puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."

# Further Exploration

class Owner
  attr_reader :name, :pets
  
  def initialize(name)
    @name = name
    @pets = []
  end

  def adopt_pet(pet)
    @pets << pet
  end

  def number_of_pets
    pets.size
  end
end

class Pet
  attr_reader :type, :name

  def initialize(type, name)
    @type = type
    @name = name
  end
end

class Shelter
  attr_reader :shelter_inventory
  
  def initialize
    @owners = []
    @shelter_inventory = []
  end
  
  def adopt(owner, pet)
    owner.adopt_pet(pet)
    @owners << owner unless @owners.include?(owner)
    @shelter_inventory.delete(pet)
  end

  def intake(pet)
    @shelter_inventory << pet
  end

  def inventory_size
    shelter_inventory.size
  end

  def print_adoptions
    @owners.each do |owner|
      puts "#{owner.name} has adopted the following pets:"
      owner.pets.each do |pet|
        puts "a #{pet.type} named #{pet.name}"
      end
      puts
    end
  end

  def print_inventory
    puts "The Animal Shelter has the following unadopted pets:"
    @shelter_inventory.each do |pet|
      puts "a #{pet.type} named #{pet.name}"
    end
    puts
  end
end

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

shelter.intake(butterscotch)
shelter.intake(pudding)
shelter.intake(darwin)
shelter.intake(kennedy)
shelter.intake(sweetie)
shelter.intake(molly)
shelter.intake(chester)

shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)

shelter.print_adoptions

asta        = Pet.new('dog', 'Asta')
laddie      = Pet.new('dog', 'Laddie')
fluffy      = Pet.new('cat', 'Fluffy')
kat         = Pet.new('cat', 'Kat')
ben         = Pet.new('cat', 'Ben')
chatterbox  = Pet.new('parakeet', 'Chatterbox')
bluebell    = Pet.new('parakeet', 'Bluebell')

shelter.intake(asta)
shelter.intake(laddie)
shelter.intake(fluffy)
shelter.intake(kat)
shelter.intake(ben)
shelter.intake(chatterbox)
shelter.intake(bluebell)

shelter.print_inventory

puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts "The Animal shelter has #{shelter.inventory_size} unadopted pets."