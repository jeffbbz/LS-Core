# RB101 Lesson 3: Practice Problems - Easy 1.3

# Replace the word "important" with "urgent" in string:

advice = "Few things in life are as important as house training your pet dinosaur."

advice.sub!("important", "urgent")

# but String#sub! only works here because it it replaces the first occurence in self.
# if we wanted to replace all we could use String#gsub!

puts advice