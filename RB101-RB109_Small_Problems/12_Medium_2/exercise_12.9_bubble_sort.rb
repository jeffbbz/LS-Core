# Small Problems > Medium 2 > Bubble Sort

def bubble_sort!(array)
  loop do
    previous_sort = array.dup
    array.each_with_index do |element, index|
      break if array[index + 1] == nil
      if array[index] > array[index + 1]
        array[index + 1], array[index] = array[index], array[index + 1]
      end
    end
    break if previous_sort == array
  end
end

# or launch school style

def bubble_sort!(array)
  loop do
    previous_sort = array.dup
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
    end
    break if previous_sort == array
  end
end

# FE with Launch School Solution

def bubble_sort!(array)
  n = 1
  loop do
    swapped = false
    1.upto(array.size - n) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end
    n += 1
    break unless swapped
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)