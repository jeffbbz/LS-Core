#Exercise 8.2

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# will print nothing because block is not activated with .call method

# will => the method returns a Proc