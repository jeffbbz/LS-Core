module Transportation
  class Vehicle; end
  class Truck < Vehicle; end
  class Car < Vehicle; end
end

truck1 = Transportation::Truck.new
p truck1

=begin

Modules are also used for namespacing, aka grouping similar classes
together for organization purposes.

Instanitation for a class contained within a module requires the
syntax seen on line 7: `ModuleName::ClassName.new`

=end