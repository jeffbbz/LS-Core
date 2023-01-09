flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Quick way with Array#map!

flintstones.map! { |name| name = name[0, 3] }

p flintstones

# Kinda goofy longer way with a loop for fun

shortened = []
counter = 0

loop do
  break if counter == flintstones.length
  shortened << (flintstones[counter])[0, 3]
  counter += 1
end

flintstones.clear.concat(shortened)

p flintstones