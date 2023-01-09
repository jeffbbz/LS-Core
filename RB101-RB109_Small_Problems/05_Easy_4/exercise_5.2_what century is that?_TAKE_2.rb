# Exercise 5.2

def century(year)
  century = if year % 100 == 0
              year / 100
            else
              year / 100 + 1
            end
  endings!(century.to_s) 
end

def endings!(cent)
  if cent.end_with?("1") && !(cent.end_with?("11"))
    cent << "st"
  elsif cent.end_with?("2") && !(cent.end_with?("12"))  
    cent << "nd"
  elsif cent.end_with?("3") && !(cent.end_with?("13"))  
    cent << "rd"
  else
    cent << "th"
  end
  cent
end

p century(2000) #== '20th'
p century(2001) #== '21st'
p century(1965) #== '20th'
p century(256) #== '3rd'
p century(5) #== '1st'
p century(10103) #== '102nd'
p century(1052) #== '11th'
p century(1127) #== '12th'
p century(11201) #== '113th'
