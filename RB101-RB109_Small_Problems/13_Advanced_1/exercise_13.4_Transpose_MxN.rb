# Small Problems > Advanced 1 > Transpose MxN

def transpose(matrix)
  new_matrix = []
  matrix[0].size.times { new_matrix << [] }
  
  matrix.each_with_index do |array, out_idx|
    array.each_with_index do |_, in_idx|
      new_matrix[in_idx][out_idx] = matrix[out_idx][in_idx]
    end
  end
  new_matrix
end

# or with double times

def transpose(matrix)
  new_matrix = []
  matrix[0].size.times { new_matrix << [] }
  
  matrix.size.times do |out_idx|
    matrix[0].size.times do |in_idx|
      new_matrix[in_idx][out_idx] = matrix[out_idx][in_idx]
    end
  end
  new_matrix
end

p transpose([[1, 2, 3, 4]]) #== [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) #== [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]