class Animal
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new
cat1.color

=begin

Lookup Path:

First Ruby will search in the instances immediate class: Cat.
When it cannot find the method there, it goes to its inherited
superclass: Animal. As it is not found in Animal, it will now
search built-in superclasses and thier included Modules: 
Object > Kernel > BasicObject in that order until it finds the 
method. As it will not find the method a NoMethodError exception 
will be raised.

Cat (Class) > Animal (Class) > Object (Built-in Class) > 
Kernel (Module included in Object) > BasicObject (Built-in Class)

We can call #ancestors method on the class of our object to find
this lookup path.

=end