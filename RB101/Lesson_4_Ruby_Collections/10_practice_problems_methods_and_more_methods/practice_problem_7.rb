[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# block => true
# method => true, output = 1

# Enumerable#any? returns a boolean true or false if any element meets a given criterion. In 
# this case with a block, it will return true or false that the block returns a truthy value
# for any element. num.odd? will return true for 1 and 3, but as it only needs to fine one
# truthy value, it will stop evaluating after returning true for 1. the puts on line 2 will
# only iterate once, and output 1 to console because the block stops evaluating after one
# iteration when it knows that the method will evaluate to true. And as the last evaluated expression
# in the block, num.odd? on 1 was truthy, the method will also return true.