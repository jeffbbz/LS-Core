class EmployeeManagementSystem
  attr_reader :employer

  def initialize(employer)
    @employer = employer
    @employees = []
  end

  def add(employee)
    if exists?(employee)
      puts "Employee serial number is already in the system."
    else
      employees.push(employee)
      puts "Employee added."
    end
  end

  alias_method :<<, :add

  def remove(employee)
    if !exists?(employee)
      puts "Employee serial number is not in the system."
    else
      employees.delete(employee)
      puts "Employee deleted."
    end
  end

  def exists?(employee)
    employees.any? { |e| e == employee }
  end

  def display_all_employees
    puts "#{employer} Employees: "

    employees.each do |employee|
      puts ""
      puts employee.to_s
    end
  end

  private

  attr_accessor :employees
end

class Employee
  attr_reader :name

  def initialize(name, serial_number)
    @name = name
    @serial_number = serial_number
  end

  def ==(other)
    serial_number == other.serial_number
  end

  def to_s
    "Name: #{name}\n" +
    "Serial No: #{abbreviated_serial_number}"
  end

  protected

  attr_reader :serial_number

  private

  def abbreviated_serial_number
    serial_number[-4..-1]
  end
end

# Example

miller_contracting = EmployeeManagementSystem.new('Miller Contracting')

becca = Employee.new('Becca', '232-4437-1932')
raul = Employee.new('Raul', '399-1007-4242')
natasha = Employee.new('Natasha', '399-1007-4242')

miller_contracting << becca     # => Employee added.
miller_contracting << raul      # => Employee added.
miller_contracting << raul      # => Employee serial number is already in the system.
miller_contracting << natasha   # => Employee serial number is already in the system.
miller_contracting.remove(raul) # => Employee deleted.
miller_contracting.add(natasha) # => Employee added.

miller_contracting.display_all_employees

=begin

With the initial code we are getting we raise a `NoMethodError` exception because we are trying to
access a private `Employee` class method from the `EmployeeManagementSystem` class. This occurs
because on line 82 of the original code, we invoke EmployeeManagementSystem#add and pass in the 
`Employee` instance store in local variable `raul`, in an attempt to add this employee to the system.
On line 10 of `EmployeeManagementSystem#add` instance method, we invoke `EmployeeManagementSystem#exists?`
found on lines 29-31. On line 30 of `exists?` we attempt to compare the passed in `Employee` object
with any `Employee` objects already in `@employees` `EmployeeManagementSystem` instance varible array. To do so
the `Employee` class custom `==` method is invoked (lines 55-57) but this method compares the `@serial_number`
`Employee` instance variables and the `attr_reader` for `Employee#serial_number` is set to `private`. This means
that the method can only be called from within the `Employee` class itself. In order to allievate this
error, we can instead set it to `protected` which will allow it to be accessed between class instances.

=end
