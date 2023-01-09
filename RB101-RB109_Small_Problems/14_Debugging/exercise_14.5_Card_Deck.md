# Small Problems > Debugging > Card Deck

[Link to Problem](https://launchschool.com/exercises/dffe2cae)

```ruby
cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards,
         :diamonds => cards,
         :clubs    => cards,
         :spades   => cards }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_cards.map do |card|
    score(card)
  end

  sum += remaining_cards.sum
end

puts sum
```

## The Problem

The first problem is that we raise a TypeError exception on line 34 because we are trying to call the `sum` method on an array that has symbols as well as integers. The array still has symbols because although line 31 in the block passed to the `map` call on the array referenced by `remaining_cards` variable did call the score method and pass each card to it, thereby re-assigning symbol elements to corresponding integers, this return value was not saved anywhere. This could be fixed by changing the `map` method call on line 30 to `map!` or by initializing a new variable to reference the currently unused return value of that `map` call:

```ruby
sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_cards.map! do |card|
    score(card)
  end

  sum += remaining_cards.sum
end

# or

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  scores = remaining_cards.map! do |card|
    score(card)
  end

  sum += scores.sum
end
```

However this only eliminates the error. The code is still not working properly. The sum number is still wrong. The real problem lies in the fact that we are mutating the array values of the deck hash in an unexpected way. Instead of only one, we are mutating all of them. This is because we have assigned the same object to each key. To avoid this we can assign clones or duplicated objects instead.

```ruby
deck = { :hearts   => cards.dup,
         :diamonds => cards.dup,
         :clubs    => cards.dup,
         :spades   => cards.dup }
```

Final Answer:

```ruby
cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.dup,
         :diamonds => cards.dup,
         :clubs    => cards.dup,
         :spades   => cards.dup }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  scores = remaining_cards.map do |card|
    score(card)
  end

  sum += scores.sum
end

puts sum
```
