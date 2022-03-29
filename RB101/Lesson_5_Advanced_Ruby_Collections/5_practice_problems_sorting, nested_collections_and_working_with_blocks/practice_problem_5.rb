munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_male_age = 0

munsters.each do |_, info|
  if info["gender"] == "male"
    total_male_age += info["age"]
  end
end

p total_male_age

# or

total_male_age = 0

munsters.each_value do |info|
  total_male_age += info["age"] if info["gender"] == "male"
end

p total_male_age

