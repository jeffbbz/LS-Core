#Exercise 8.5

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'

Error is generated because & is not used with the block (&block) so
so the arguement is incorrect and the block is not passed as a parameter