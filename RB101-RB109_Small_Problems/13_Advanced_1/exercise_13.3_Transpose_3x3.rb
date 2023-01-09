# Small Problems > Advanced 1 > Transpose 3x3

def transpose(arrays)
  new_arrays = [[], [], []]
  arrays.each_with_index do |array, out_idx|
    array.each_with_index do |_, in_idx|
      new_arrays[in_idx][out_idx] = arrays[out_idx][in_idx]
    end
  end
  new_arrays
end

# or with double times

def transpose(arrays)
  new_arrays = [[], [], []]
  arrays.size.times do |out_idx|
    arrays[0].size.times do |in_idx|
      new_arrays[in_idx][out_idx] = arrays[out_idx][in_idx]
    end
  end
  new_arrays
end

# refactor with map.with_index

def transpose(arrays)
  new_arrays = arrays.map.with_index do |array, out_idx|
                array.map.with_index { |_, in_idx| arrays[in_idx][out_idx] }
  end
end


matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# Further Exploration mutating transpose

def transpose!(matrix)
  matrix[0][1], matrix[1][0] = matrix[1][0], matrix[0][1]
  matrix[0][2], matrix[2][0] = matrix[2][0], matrix[0][2]
  matrix[1][2], matrix[2][1] = matrix[2][1], matrix[1][2]
end

def transpose!(matrix)
  3.times do |idx|
    idx < 2 ? n = 1 : n = -2 
    matrix[idx][idx + n], matrix[idx + n][idx] = matrix[idx + n][idx], matrix[idx][idx + n]
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

transpose!(matrix) #== [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix #== [[1, 4, 3], [5, 7, 9], [8, 2, 6]]