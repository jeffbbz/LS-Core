# Small Problems > Advanced 1 > Madlibs Revisited

REPLACEMENTS = {
  adjective: %w(quick lazy sleepy ugly),
  noun: %w(fox dog head leg),
  verb: %w(jumps lifts bites licks),
  adverb: %w(easily lazily noisily excitedly)
}

def madlib(text)
  text_arr = text.split.map do |word|
              case 
              when word.include?("%{adj") then REPLACEMENTS[:adjective].sample
              when word.include?("%{noun}") then REPLACEMENTS[:noun].sample
              when word.include?("%{verb}") then REPLACEMENTS[:verb].sample
              when word.include?("%{adv") then REPLACEMENTS[:adverb].sample
              else word
              end
            end
  puts text_arr.join(" ")
end

# or with File.open and .read

REPLACEMENTS = {
  "%{noun}" => ['fox', 'dog', 'head', 'leg'],
  "%{verb}" => ['jumps', 'lifts', 'bites', 'licks'],
  "%{adverb}" => ['easily', 'lazily', 'noisily', 'excitedly'],
  "%{adjective}" => ['quick', 'lazy', 'sleepy', 'ugly']
}

def madlibs(file)
  text = file.read
  REPLACEMENTS.each do |type, words|
    while text.match?(type)
      text.sub!(type, words.sample)
    end
  end
  puts text
end

file = File.open("sample_text.txt")
madlibs(file)

# or LS solution with file.open and kernal#format but my constant

REPLACEMENTS = {
  adjective: %w(quick lazy sleepy ugly),
  noun: %w(fox dog head leg),
  verb: %w(jumps lifts bites licks),
  adverb: %w(easily lazily noisily excitedly)
}

def madlibs(file)
  file.each do |line|
    puts format(line, adjective: REPLACEMENTS[:adjective].sample,
                      verb:      REPLACEMENTS[:verb].sample,
                      noun:      REPLACEMENTS[:noun].sample,
                      adverb:    REPLACEMENTS[:adverb].sample)
    end
end

file = File.open("sample_text.txt")
madlibs(file)