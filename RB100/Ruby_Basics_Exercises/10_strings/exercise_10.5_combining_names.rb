#Exercise 10.5

first_name = 'John'
last_name = 'Doe'

full_name = "#{first_name} #{last_name}"

# or with String Contenation + Variable Assignment: 
# full_name = 'John' + ' ' + 'Doe'

# or like this, with Shovel and Variable Assignement
# but this would also mutate the first_name variable:
# full_name = first_name << ' ' << last_name

puts full_name
