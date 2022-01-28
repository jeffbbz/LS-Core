#Exercise 8.1

def has_lab?(string)
  if string =~ /lab/i
    puts string
  else
    puts "Nope, #{string} ain't it!"
  end
end

has_lab?("laboratory")
has_lab?("experiment")
has_lab?("Pans Labyrinth")
has_lab?("elaborate")
has_lab?("polar bear")