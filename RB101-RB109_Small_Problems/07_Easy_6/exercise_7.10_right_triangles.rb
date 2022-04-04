# Exercise 7.10

def triangle(num)
  space_counter = num - 1
  glob_counter =  1 
  
  loop do
    space_counter.times { print "\s" }
    glob_counter.times { print "*" }
    print "\n"
    space_counter -= 1
    glob_counter += 1
    break if glob_counter > num
  end
end

triangle(5)

# or Example Answer

def triangle(num)
  space_counter = num - 1
  glob_counter = 1

  num.times do |n|
    puts ("\s" * space_counter) + ('*' * glob_counter)
    space_counter -= 1
    glob_counter += 1
  end
end

triangle(5)

# or Other Student Answer with Array

def triangle(num)
  p globs = Array.new(num) { |index| "\s" * (num - index - 1) + "*" * (index + 1) }
  puts globs
end

triangle(5)

# or Other Student Answer

def triangle(num)
  globs = '*'
  num.times do |i| 
    puts globs.rjust(num)
    globs += '*'
  end
end

triangle(5)

# Further Exploration

def triangle(num)
  space_counter = 0
  glob_counter =  num 
  
  loop do
    space_counter.times { print "\s" }
    glob_counter.times { print "*" }
    print "\n"
    space_counter += 1
    glob_counter -= 1
    break if glob_counter == 0
  end
end

triangle(5)

# or

def triangle(num)
  space_counter = 0
  glob_counter = num

  num.times do |n|
    puts ("\s" * space_counter) + ('*' * glob_counter)
    space_counter += 1
    glob_counter -= 1
  end
end

triangle(5)


