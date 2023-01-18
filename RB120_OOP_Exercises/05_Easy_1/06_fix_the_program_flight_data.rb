class Flight
  attr_accessor :database_handle

  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end

=begin
  
The best idea here is to delete the attr_accessor. It is not necessary to provide full and
easy public direct access to an implementation detail such as that.
  
=end
