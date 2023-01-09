# Small Problems > Advanced 1 > Rotating Matrices

def rotate90 (matrix)
  new_matrix = []
  matrix[0].size.times { new_matrix << [] }
  change = matrix.size - 1
  
  matrix.size.times do |out_idx|
    matrix[0].size.times do |in_idx|
      new_matrix[in_idx][out_idx] = matrix[out_idx + change][in_idx]
    end
    change -= 2
  end
  new_matrix
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

# Further Exploration 90-360 degrees with additional argument

def rotate_matrix (matrix, rotation)
  (rotation / 90).times do
    new_matrix = []
    matrix[0].size.times { new_matrix << [] }
    change = matrix.size - 1
    
    matrix.size.times do |out_idx|
      matrix[0].size.times do |in_idx|
        new_matrix[in_idx][out_idx] = matrix[out_idx + change][in_idx]
      end
      change -= 2
    end
    matrix = new_matrix
  end
  matrix
end

matrix4 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix4_90 = rotate_matrix(matrix4, 90)
new_matrix4_180 = rotate_matrix(matrix4, 180)
new_matrix4_270 = rotate_matrix(matrix4, 270)
new_matrix4_360 = rotate_matrix(matrix4, 360)

p new_matrix4_90 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix4_180 == [[6, 9, 3], [2, 7, 4], [8, 5, 1]]
p new_matrix4_270 == [[8, 2, 6], [5, 7, 9], [1, 4, 3]]
p new_matrix4_360 == [[1, 5, 8],[4, 7, 2],[3, 9, 6]]

matrix5 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix5_90 = rotate_matrix(matrix5, 90)
new_matrix5_180 = rotate_matrix(matrix5, 180)
new_matrix5_270 = rotate_matrix(matrix5, 270)
new_matrix5_360 = rotate_matrix(matrix5, 360)

p new_matrix5_90 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix5_180 == [[8, 0, 1, 5], [2, 4, 7, 3]]
p new_matrix5_270 == [[2, 8], [4, 0], [7, 1], [3, 5]]
p new_matrix5_360 == [[3, 7, 4, 2], [5, 1, 0, 8]]