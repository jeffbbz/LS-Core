# Small Problems > Debugging > Reverse Sentence

[Link to Problem](https://launchschool.com/exercises/dffe2cae)

```ruby
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = words[i] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'
```

## The Problem

Line 7 raises a TypeError exception because we are attempting to call the `String#+` method on a string (`words[i]`) and pass in an array (`reversed_words`) as an argument. As an array cannot use be concatenated to a string like this (arrays must use `Array#+` method), we get the error. The easiest way to solve this issue is to turn `words[i]` into an array first like so `[words[i]]`:

```ruby
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = [words[i]] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'
```

