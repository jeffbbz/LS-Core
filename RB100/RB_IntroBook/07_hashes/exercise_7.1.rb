#Exercise 7.1

family = {
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank", "rob", "david"],
  aunts: ["mary", "sally", "susan"]
}

imm_fam_array = family.select { |k, v| (k == :sisters) || (k == :brothers) }.values.to_a
imm_fam_array.flatten!
p imm_fam_array