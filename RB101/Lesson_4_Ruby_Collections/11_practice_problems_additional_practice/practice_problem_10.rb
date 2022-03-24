munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# With If and comparison

 munsters.each do |name, info|
  if info["age"] < 18
    info["age_group"] = "kid"
  elsif info["age"] > 64
    info["age_group"] = "senior"
  else
    info["age_group"] = "adult"
  end
end

p munsters

# with Case and Range

munsters.each do |name, info|
  case info["age"]
  when 0..17
    info["age_group"] = "kid"
  when 18..64
    info["age_group"] = "adult"
  else
    info["age_group"] = "senior"
  end
end

p munsters