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
