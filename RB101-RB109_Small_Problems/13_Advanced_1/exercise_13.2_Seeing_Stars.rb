# Small Problems > Advanced 1 > SeeingStars

def make_top_line(number, line, center_index)
  number.times do |index|
    if index == 0 || index == center_index || index == number - 1
      line << "*"
    else
      line << " "
    end
  end
end

def swap_inward(line, index, neg_index)
  line[index], line[index + 1] = line[index + 1], line[index]
  line[neg_index], line[neg_index - 1] = line[neg_index - 1], line[neg_index]
end

def swap_outward(line, index, neg_index)
  line[index], line[index - 1] = line[index - 1], line[index]
  line[neg_index - 1], line[neg_index] = line[neg_index], line[neg_index - 1]
end

def print_top(number, line, center_index)
  neg_index = -1
  0.upto(center_index - 2) do |index| 
    swap_inward(line, index, neg_index)
    puts line.join
    neg_index -= 1
  end
end

def print_bottom(number, line, center_index)
  neg_index = -center_index
  center_index.downto(1) do |index|
    swap_outward(line, index, neg_index)
    puts line.join
    neg_index += 1
  end
end

def star(number)
  line = []
  center_index = (number - 1) / 2
  make_top_line(number, line, center_index)
  puts line.join
  print_top(number, line, center_index)
  puts '*' * number
  print_bottom(number, line, center_index)
end

star(7) 
star(9)
