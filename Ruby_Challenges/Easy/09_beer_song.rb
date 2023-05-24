class BeerSong
  VERSE_2 = "2 bottles of beer on the wall, 2 bottles of beer.\n" \
  "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  
  VERSE_1 = "1 bottle of beer on the wall, 1 bottle of beer.\n" \
  "Take it down and pass it around, no more bottles of beer on the wall.\n"
  
  VERSE_0 = "No more bottles of beer on the wall, no more bottles of beer.\n" \
  "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  
  def self.verse_3_to_99(beer_number)
    "#{beer_number} bottles of beer on the wall, #{beer_number} bottles of beer.\n" \
    "Take one down and pass it around, #{beer_number - 1} bottles of beer on the wall.\n"
  end

  def self.verse(number)
    case number
    when 2     then VERSE_2
    when 1     then VERSE_1
    when 0     then VERSE_0
    else        
      verse_3_to_99(number)
    end
  end

  def self.verses(first, last)
    (last..first).map { |current_verse| verse(current_verse) }.reverse.join("\n")
  end

  def self.lyrics
    verses(99, 0)
  end
end
