# Small Problems > Debugging > Neutralizer

[Link to Problem](https://launchschool.com/exercises/51385f07)

```ruby
def neutralize(sentence)
  words = sentence.split(' ')
  words.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.
```

## The Problem

 The issues lies on lines 3-5. We are using a destructive method `delete` on an array that we are iterating over. This is generally an ill-advised practice as it can bring about unexpected results. The each method call is passed the block, with the block local variable word assigned to refernece the current array element of each iteration. This generally goes as expected however, after we delete the string element `'dull'` at index 1, the array is now shorter. Each is ready iterate over the element at index 2  but that element is not longer `boring` which has moved to index 1 after the deletion of dull, now that element is cards. so boring is effectively skipped. This also happens later with the word board but as it is not a word we are concerned with we do not notice. We can fix it by changing the method and how it iterates.

```ruby
def neutralize(sentence)
  words = sentence.split(' ')
  words.reject { |word| negative?(word) }.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.
```

## Further Exploration

