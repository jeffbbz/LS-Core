# RB101 Lesson 3: Practice Problems - Easy 1.8

flintstones = { 
              "Fred"      => 0, 
              "Wilma"     => 1, 
              "Barney"    => 2, 
              "Betty"     => 3, 
              "BamBam"    => 4, 
              "Pebbles"   => 5 
              }

# Turn this into an array containing only two elements: 
# Barney's name and Barney's number

flintstones.assoc("Barney")

# or a longer dumber way:

flintstones.delete_if {|key, value| key != "Barney"}
flintstones.to_a.flatten!

