#Exercise 5.2
answer = ""

while answer != "STOP" do
  puts "GO or STOP?"
  answer = gets.chomp
    if answer == "STOP"
      puts "Okay, fine, stop."
    else
      puts "Let's Go!"
    end
end
