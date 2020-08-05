
class VerseZero
  attr_reader :lyric

  def initialize(number_bottles = nil)
    @lyric = verse(number_bottles)
  end 

  def verse(number_bottles)
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end
end

class VerseOne
  attr_reader :lyric

  def initialize(number_bottles = nil)
     @lyric = verse(number_bottles)
  end

  def verse(number_bottles)
    "1 bottle of beer on the wall, 1 bottle of beer.\n" \
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end 
end

class VerseTwo

  attr_reader :lyric

  def initialize(number_bottles = nil)
     @lyric = verse(number_bottles)
  end
  
  def verse(number_bottles)
    "2 bottles of beer on the wall, 2 bottles of beer.\n" \
    "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  end
end

class VerseDefault
  attr_reader :lyric
  
  def initialize(number_bottles)
    @lyric = verse(number_bottles)
  end

  def verse(number_bottles)
    "#{number_bottles} bottles of beer on the wall, #{number_bottles} bottles of beer.\n" \
    "Take one down and pass it around, #{number_bottles - 1} bottles of beer on the wall.\n"
  end
end

class BeerSong

  def initialize
    @lyric_array = populate_lyric_array
  end

  def populate_lyric_array
    array_verses = [VerseZero.new, VerseOne.new, VerseTwo.new]
    3.upto(99) {|number_beers| array_verses << VerseDefault.new(number_beers)}
    array_verses
  end

  def verse(verse_idx)
    @lyric_array[verse_idx].lyric
  end

  def verses(end_idx, start_idx)
    @lyric_array[start_idx..end_idx].map(&:lyric).reverse.join("\n")
  end

  def lyrics
    @lyric_array.map(&:lyric).reverse.join("\n")
  end
end

