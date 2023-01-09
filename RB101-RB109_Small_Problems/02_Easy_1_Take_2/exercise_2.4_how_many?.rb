#Exercise 2.4

# Here's the dumb way i originally did it:

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# def count_occurrences(type)
  
#   car_count = 0
#   truck_count = 0
#   suv_count = 0
#   motorcycle_count = 0

#   type.map do |element| 
#     if element.end_with?("car") == true
#       car_count += 1
#     elsif element.end_with?("truck") == true
#       truck_count += 1
#     elsif element.end_with?("SUV") == true
#       suv_count += 1
#     elsif element.end_with?("motorcycle") == true
#       motorcycle_count += 1 
#     end
#   end
#   puts "car => #{car_count}"
#   puts "truck => #{truck_count}"
#   puts "SUV => #{suv_count}"
#   puts "motorcycle => #{motorcycle_count}"
# end

# count_occurrences(vehicles)

# Here's the obviously better way:

def count_occurrences(type)
  occurences = {}

  type.uniq.each do |element|
    occurences[element] = type.count(element)
  end

  occurences.each { |element, count| puts "#{element} => #{count}"}

end

count_occurrences(vehicles)

# Take 2

# Longest with a loop

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  index = 0
  count = Hash.new

  loop do
    break if index > array.length - 1
    if count.key?(array[index])
      count[array[index]] += 1
    else
      count[array[index]] = 1
    end
    index += 1
  end
  count
end

count = count_occurrences(vehicles)
count.each { |k, v| puts "#{k} => #{v}"}

# or shorter with .each

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  count = Hash.new
  array.each do |vehicle|
    if count.key?(vehicle)
      count[vehicle] += 1
    else
      count[vehicle] = 1
    end
  end
count
end  

count = count_occurrences(vehicles)
count.each { |k, v| puts "#{k} => #{v}"}

# or shortest with uniq.each

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  count = Hash.new
  array.uniq.each { |vehicle| count[vehicle] = array.count(vehicle) }
  count
end

count = count_occurrences(vehicles)
count.each { |k, v| puts "#{k} => #{v}"}

# or shortest with just each not uniq

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  count = Hash.new
  array.each { |vehicle| count[vehicle] = array.count(vehicle) }
  count
end

count = count_occurrences(vehicles)
count.each { |k, v| puts "#{k} => #{v}"}

# Further Exploration: Case Insenstive

vehicles = [
  'car', 'Car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  count = Hash.new
  array.each do |vehicle|
    vehicle = vehicle.downcase
    if count.key?(vehicle)
      count[vehicle] += 1
    else
      count[vehicle] = 1
    end
  end
count
end  

count = count_occurrences(vehicles)
count.each { |k, v| puts "#{k} => #{v}"}