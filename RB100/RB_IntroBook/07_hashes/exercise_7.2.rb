#Exercise 7.2

# merge returns a new hash with the combined contents of two hashes.
# merge! mutates the caller and combines two hashes into the original hash

# merge

cool_hats = {
    Todd: "red",
    Janet: "green",
    Lance: "black"
}

more_cool_hats = {
    Milkboy: "orange",
    Needles: "brown",
    Lenny: "pinkish"
}

cool_hats.merge(more_cool_hats)
p cool_hats
p more_cool_hats

# merge!

cool_hats = {
  Todd: "red",
  Janet: "green",
  Lance: "black"
}

more_cool_hats = {
  Milkboy: "orange",
  Needles: "brown",
  Lenny: "pinkish"
}

cool_hats.merge!(more_cool_hats)
p cool_hats