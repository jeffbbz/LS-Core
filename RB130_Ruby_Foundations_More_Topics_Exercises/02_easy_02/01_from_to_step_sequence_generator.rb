=begin
  
### Goal:

Write a method similar to Range#step which takes three arguments and a block,
executes the block and returns the return value of the block

### Rules:
INPUT: 3 integers (start value, end value, step value), and a block
OUTPUT: return value of the block
- first integer is start value of a range
- second integer is end value of a range
- third integer is step value of a range
- iteration should step indexically according to the 3rd value:
  0, element at 3rd value index, element at 3rd value index + 3rd value, etc, end value
- return value of the counter method (mimicing the upto method in teh built in library)


### Algorithm:
1. initialize an counter local variable to the start_val
2. Iterate start to end val number of times
  - yield to the block and pass it value of the counter
  - break if the counter value == end value
  - increment the counter value by the step value
3. Return the value of the counter variable



=end


def step(start_val, end_val, step_val)
  counter = start_val
  start_val.upto(end_val) do |_|
    yield(counter)
    break if counter == end_val
    counter += step_val
  end
  counter
end

p step(1, 10, 3) { |value| puts "value = #{value}" }