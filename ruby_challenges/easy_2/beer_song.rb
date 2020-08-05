# write a program that will generate the verses of the beer song
# three instance methods are require, one `verse` you can pass in one argument, that will
# return that verse
# another instance method `verse` you can pass in a range of verses and it will give you thoses
# the other is lyrics and it will give you the full set of lyrics
# create an empty array
# populate the empty array with each lyric of the beer song with 0 as the first number of beer which is no
# reverse the array and join for full lyrics

class BeerSong

  def initialize
    @song_array = self.populate_song_array
  end

  def populate_song_array
    final_lyric = "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    
    lyric_array = []

    0.upto(99) do |current_beers|
      if current_beers == 0
        line = first_lyric("No") + final_lyric
        lyric_array << line
      elsif current_beers == 1
        line = first_lyric(current_beers) + intermediate_lyric("no")
        lyric_array << line 
      else 
        line = first_lyric(current_beers) + intermediate_lyric((current_beers - 1))
        lyric_array << line
      end
    end 

    lyric_array
  end

  def first_lyric(beers)
    beers_1 = beers 
    beers_2 = beers
    beers_1 = beers + " more" if beers.class == String
    beers_2 = beers.downcase + " more" if beers.class == String
    s = "s"
    s = "" if beers == 1
    "#{beers_1} bottle#{s} of beer on the wall, #{beers_2} bottle#{s} of beer.\n" \
  end

  def intermediate_lyric(next_beers)
    quantifier = "one" if next_beers.class == Integer
    quantifier = "it" if next_beers == "no"
    remaining_beers = next_beers
    remaining_beers = next_beers + " more" if next_beers.class == String
    s = "s"
    s = "" if next_beers == 1
    "Take #{quantifier} down and pass it around, #{remaining_beers} bottle#{s} of beer on the wall.\n"
  end

  def verse(verse_idx)
    @song_array[verse_idx]
  end

  def verses(end_idx, start_idx)
    @song_array[start_idx..end_idx].reverse.join("\n")
  end

  def lyrics
    @song_array.reverse.join("\n")
  end

end

puts BeerSong.new.populate_song_array