### Group 1

```ruby
my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc
  # #<Proc:0x00007fe803829720 exploring_procs_lambdas_blocks_def_and_arity.rb:2>
puts my_proc.class
  # Proc
my_proc.call
  # This is a .
my_proc.call('cat')
  # This is a cat.
```

`Proc` objects (along with blocks) have lenient arity. This means that we can pass more or less arguments than they have been defined to accept, without raising an exception. This is demonstrated in the above code: On line 1, We instantiate a new `Proc` object using the `Proc` class constructor method which calls `Proc::new`. `Proc`s are a type of closure which encapsulate a block of code which can then be passed around our code. This Proc is then stored in local variable `my_proc` for later reference. 

Line 2 passes the `Proc` referenced by `my_proc` to `Kernel#puts` which itself invokes `#to_s` for output to console. This outputs a string representation of the Proc object with the class name, a unique identifier number, and the location of where the proc was defined in the code. Line 4 invokes `Object#class` method on the proc which returns its class `Proc` and passes that to puts for output. 

Line 6, invokes `Proc#call` method on the proc. This invokes the block which the `Proc` was defined with, and setting the block parameters to any passed in arguments, then returns the value of the last evaluated expression of the block. In our case, we don't pass in any arguments, so the block parameter `thing` references nil. Thus the block is invoked once, which outputs the string from the block, but as string interpolation calls `#to_s` which outputs `nil` as an empty string, our output will be what is seen on line 7. Finally, on line 8, we against invoke `Proc#call` but this time we pass in an argument which is assigned to the parameter `thing` and thus our output is as seen on line 9.

As we can see, line 6 is able execute to the block of the `proc` without passing in an argument and without raising an error due the lenient arity of `proc`s.



### Group 2

```ruby
my_lambda = lambda { |thing| puts "This is a #{thing}." }
my_second_lambda = -> (thing) { puts "This is a #{thing}." }
puts my_lambda # #<Proc:0x00007fd36c8415b0 rb:1 (lambda)>
puts my_second_lambda #<Proc:0x00007fe84c0519a0 rb:2 (lambda)>
puts my_lambda.class  # Proc
my_lambda.call('dog') # This is a dog.
my_lambda.call  # wrong number of arguments (given 0, expected 1) (ArgumentError)
my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." } 
# uninitialized constant Lambda (NameError)
```

This time we are dealing with another type of closure, a type of `Proc` known as a `lambda`. On line 1 we create a lambda using `Kernel#lambda` and on line 2 we create another `lambda` using the Lambda proc literal syntax (`->`).

First let's discuss the `lambda` defined on line 1. On line 3, this lambda is passed to `Kernel#puts` via its local variable referent. This calls `#to_s` on the `lambda` and outputs to console the class name, a unique identifier number, and the location in the code where it was defined, along with an indicator that it is a `lambda`. Line 5, calls `Object#class` on the lambda and passes this to `puts`, which outputs the class as a string, in this case `Proc`.

Next we have lines 6 and 7. It's here that we see the difference between a regular `proc` and a `lambda` `proc`. Line 6 invokes `Proc#call` on the `lambda` and passes in the `string` `'dog'` as an argument. This executes the block of the `lambda` which outputs `"This is a dog."` However, line 7 attempts the same thing without an argument. Unlike with a regular `proc`, `lambdas` have strict arity, meaning that we must pass in the correct number of arguments. When it was defined on line 1, it was defined with one parameter, so we must pass one parameter to its block. As we do not we raise a `ArgumentError` exception.

Back on line 4 we pass the other `lambda` from line 2 to `Kernel#puts` and get a similar output as line 3.

Finally, line 8, looks like we are trying to instantiate a new `lambda` object but this is incorrect syntax and so raises an exception.



### Group 3

```ruby
def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."} # This is a .
block_method_1('seal') # no block given (yield) (LocalJumpError)
```

In this example we define a method `block_method_1` with one parameter on lines 1-3 and one lines 5 and 6 we attempt to invoke this method.

First one line 5 we invoke the method, passing in one argument and a block. As the method takes one argument we do not raise an error and are able to invoke it. The only code to execute in the method is the `yield` keyword on line 2 which invokes the passed in block. However, the block takes one argument, and we don't pass any to `yield`. As blocks have lenient arity, this will not raise an exception but it does mean that the output from the expression executed in the block will be `This is a .` as without an arguement, the block parameter is assigned to `nil`.

Meanwhile, on line 6, we attempt to call the method again, this time with an argument but without a block. This will raise a `LocalJumpError` exception when the `yield` keyword on line 2 attempts to call a block.



### Group 4

```ruby
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."} # This is a turtle.
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end # This is a turtle and a .
block_method_2('turtle') { puts "This is a #{animal}."} # undefined local variable or method `animal' for main:Object (NameError)
```

Here we again define a method that takes one argument, yields to a block, and passes the argument given to the method to the block. Line 5 demonstrates this correctly. The method is invoked, and the string `'turtle'` is passed in as an argument a long with a block. Line 2 of the method calls the block with `yield`, and passes in the argument to the method,` 'turtle'`. This is assigned to the block parameter and the block will output, `This is a turtle.`

Next on lines 6-8, we again invoke the method, pass in a string argument, and a block. This time however, the block has two parameters. As blocks have lenient arity, we do not raise an exception when line 2 `yield` passes only one argument to the block. But the second block parameter, as it's missing an argument, will be filled with `nil` and thus the output of the block will be `This is a turtle and a .` as `nil` `to_s` returns an empty string.

Finally, line 9 will raise a `NameError` exception because the block has no parameters, yet tries to reference a local variable `animal`. Since the block takes no arguments, `animal` must be initialized in the blocks binding, which would be the main scope where it was defined. As there is no local variable `animal` initialized in the `main` scope, we raise this error.



### Final Analysis

`Procs`, blocks, and `lambdas` are all closures, which are encapsulations of bits of code that can be passed around our code base to defer some decisions until invocation time. Closures drag their binding or the context surrounding their definition with them. Blocks and `Procs` have lenient arity, meaning they do not raise an exception if too many or too few arguments are passed to them. `Lamdas` as a type of `proc` but with strict arity meaning they enforce the necessary number of arguments. Meanwhile, `Procs` (and `lambdas` which are `procs`) are `Proc` objects. Implicit blocks (most blocks) are not objects.