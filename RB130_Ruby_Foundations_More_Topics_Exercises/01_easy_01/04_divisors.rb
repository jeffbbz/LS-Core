=begin

### Goal:
Return an array of all divisors (in any order) of a given positive integer

### Rules:
INPUT: a positive integer
OUTPUT: an array of positive integers which are divisors of the input
- A divisor is a number that divides another number without remainder
- every positive integer has at least one divisor: 1 (even 1 itself)
- every positive integer is divisible by itself
- divisor -> num % other_num == 0
- divisor cannot be larger than input number
- divisor cannot be less than 1

### Initial Thoughts:
Create a range from 1..argument number
check if each number in that range returns 0 from %
if so add it to an array
return new array 

### Data Structure:
Array

### Algorithm
1. Initialize a local variable range to a range from 1..argument number
2. Iterate over the range
  - select any element that returns 0 (or returns true for 0) when the arg is divided by it
  - add that element to a new array
3. Return new array


=end

# def divisors(num)
#   (1..num).select { |el| num % el == 0 }
# end

# Or a little bit faster

def divisors(num)
  ((1..num/2).select { |el| num % el == 0 }) + [num]
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute

# Further Exploration

=begin

### Idea:
To find the divisors we can find the prime factors of a given number
then divide the given number by each factor to find each other divisor

### Algorithm
1. Require the prime gem
2. Return an array with 1 as the only element if the input num is 1
3. Initialize a local variable prime_factors to store the return
  value of Prime#prime_division with the input number as an argument
  - flatten the resulting 2-d array
  - delete non-unique elements
4. Iterate over the array of prime factors
  - return a new array whose elements are the factor, and the result
    of dividing the input number by the factor.
  - flatten the resulting 2-d array
  - delete non-unique elements
  - sort elements from low to high
5. Return the array of divisors

Or without Prime Gem

1. Find Prime factors of input number 
  - Create a range from 1 to the square root of the input number
  - iterate over the range selecting the prime factors (any number that even divides into the input number)
  - return array of prime factors of input number and store in local var
2. Iterate over the array of prime factors
  - return a new array whose elements are the factor, and the result
    of dividing the input number by the factor.
  - flatten the resulting 2-d array
  - delete non-unique elements
  - sort elements from low to high
3. Return the array of divisors

=end

# Using Prime

require 'prime'

def divisors(num)
  return [num] if num == 1
  prime_factors = num.prime_division.flatten.uniq
  prime_factors.flat_map { |factor| [factor, (num / factor)] }.uniq.sort
end

# Same Way as Prime Gem but without it

def divisors(num)
  prime_factors = (1..Integer.sqrt(num)).select do |factor|
    num % factor == 0
  end
  prime_factors.flat_map { |factor| [factor, (num / factor)] }.uniq.sort
end

# Similar to Above but shorter and different, Modeled after another student answer

def divisors(num)
  (1..Integer.sqrt(num)).each_with_object([]) do |factor, new_arr|
    next if num % factor != 0
    new_arr << factor << (num / factor)
  end.uniq.sort
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891]
p divisors(999962000357) == [1, 999979, 999983, 999962000357]