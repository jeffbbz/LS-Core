# Exercise 7.10

def right_bottom_triangle(num)
  string = " " * (num - 1) + "*"
  num.times do
    puts string
    string += "*" 
    string.slice!(0)
  end
end

def left_bottom_triangle(num)
  string = " " * (num - 1) + "*"
  num.times do
    puts string.reverse
    string += "*" 
    string.slice!(0)
  end
end

def right_top_corner_triangle(num)
  string = "*" * (num)
  num.times.with_index do |_, index|
    puts string
    string[index] = " "
  end
end

def left_top_corner_triangle(num)
  string = "*" * (num)
  num.times.with_index do |_, index|
    puts string.reverse
    string[index] = " "
  end
end

def any_corner_right_triangle(num, corner)
  case corner
  when "topright" then right_top_corner_triangle(num)
  when "topleft" then left_top_corner_triangle(num)
  when "bottomright" then right_bottom_triangle(num)
  else "bottomleft" 
    left_bottom_triangle(num)
  end
end

any_corner_right_triangle(5, "bottomright")
#     *
#    **
#   ***
#  ****
# *****

any_corner_right_triangle(5, "topright")

# *****
#  ****
#   ***
#    **
#     *

any_corner_right_triangle(5, "topleft")

# *****
# **** 
# ***  
# **   
# *    

any_corner_right_triangle(5, "bottomleft")

# *    
# **   
# ***  
# **** 
# *****

any_corner_right_triangle(9, "bottomright")

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********

any_corner_right_triangle(9, "topright")

# *********
#  ********
#   *******
#    ******
#     *****
#      ****
#       ***
#        **
#         *

any_corner_right_triangle(9, "topleft")

# *********
# ******** 
# *******  
# ******   
# *****    
# ****     
# ***      
# **       
# *        

any_corner_right_triangle(9, "bottomleft")

# *        
# **       
# ***      
# ****     
# *****    
# ******   
# *******  
# ******** 
# *********