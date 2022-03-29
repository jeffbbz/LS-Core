arr1 = [1, [2, 3], 4]

# Quick Way

arr1[1][1] = 4

# Silly Long Way

arr1.map do |element|
  if element.to_s.size != 1
    element.map do |num|
      if num > 2
        num + 1
      else
        num
      end
    end
  else
    element
  end
end

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

arr2[2] = 4

hsh1 = {first: [1, 2, [3]]}

hsh1[:first][2][0] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

hsh2[['a']][:a][2] = 4