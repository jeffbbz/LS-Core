
def sum_of_multiples(target_number, numbers_for_multiples)
  multiples = []
  range = (1...target_number)
  numbers_for_multiples = [3, 5] if numbers_for_multiples.length == 0

  numbers_for_multiples.each do |mult_num|
    range.each do |range_num|
      multiples << range_num if range_num % mult_num == 0
    end
  end 
  multiples.uniq.sum
end

p sum_of_multiples(20, [3, 5]) # 78
p sum_of_multiples(20, [3]) # 63
p sum_of_multiples(20, [5]) # 30
p sum_of_multiples(20, []) # 78
p sum_of_multiples(1, []) # 0