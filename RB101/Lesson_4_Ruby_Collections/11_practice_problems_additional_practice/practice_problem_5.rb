flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Array#index and String#start_with?

flintstones.index { |name| name.start_with?("Be") }

#or flintstones.index { |name| name[0, 2] == "Be" }

# little more goofily with Enumerable#each_with_index and String#start_with?

first_name_index = 0

flintstones.each_with_index do |name, index|
  if name.start_with?("Be")
    first_name_index = index
  end
end

first_name_index
