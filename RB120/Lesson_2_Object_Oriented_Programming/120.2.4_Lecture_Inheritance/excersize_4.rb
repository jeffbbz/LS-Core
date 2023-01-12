=begin
  
The method lookup path is the order in which Ruby searches through
classes to find an invoked method. It starts with the immediate
class of the calling object, then any included modules, then
any manually inherited classes, then the default custom object
classes that all classes inherit from. Knowing how this works is
important to understand how to best code your program and how
to debug issues related to it.
  
=end