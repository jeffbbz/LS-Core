factorials = Enumerator.new do |y|
              counter, factorial = 1, 1
                loop do
                  y << factorial
                  factorial = (1..counter).inject(:*)
                  counter += 1
                end
              end

# or

factorials = Enumerator.new do |y|
                counter, factorial = 1, 1
                  loop do
                    y << factorial
                    factorial *= counter
                    counter += 1
                  end
                end
  

# External Iteration

7.times { |num| puts "#{num}! is #{factorials.next}" }
puts
3.times { |num| puts "#{num}! is not #{factorials.next}" }
factorials.rewind
puts
7.times { |num| puts "#{num}! is #{factorials.next}" }
puts

# or Internal Iteration

factorials.each_with_index do | fac, idx |
  break if idx >= 7
  puts "#{idx}! is #{fac}"
end
