# Pig Latin is a made-up children's language that's intended to be confusing. 
# It obeys a few simple rules (below), but when it's spoken quickly it's really 
# difficult for non-children (and non-native speakers) to understand.

# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, 
# and then add an "ay" sound to the end of the word.
# There are a few more rules for edge cases, and there are regional variants too.
# other rules:
#   - word begins with vowel, add ay
#   - word begns with constant, move constant to end and add ay 
#   - K: move to end and add ay
#   - ch: move to end add ch
#   - qu: move to end add ay
#   - sq: move to end add ay
#   - th: move to end add ay 
#   - thr: move to end add ay 
#   - sch: move to end add ay
#   - y followed by vowel move y to end add ay
#   - y followed by constant, add ay 
#   - x followed by vowel, move to end add ay
#   - x followed by constant, just add ay

# make a hash of regex, with the regex as the value and the rule as the key.  The rule will be 
# the count of the regex to move to the back.
# if there is no match iterate over the hash you will assume its a vowel and just add ay to the end 

# you will need to split the word into an array, and join again at the end with join(" ")

# If English isn't your primary language, Pig Latin may seem tricky. 
# For a complete discussion of Pig Latin, see this Wikipedia article.
# You can also watch the solution video from about the 3:30 point through
# about 10:30 without having the solution spoiled for you.


class PigLatin

  LOOK_UP_HASH = {

    /^[s][c][h]/ => 2, 
    /^[s][q][u]/ => 2,
    /^[k]/ => 0,
    /^[c][h]/ => 1,
    /^[q][u]/ => 1,
    /^[t][h][r]/ => 2,
    /^[t][h]/ => 1,
    /^[y][aieou]/ => 0,
    /^[x][aieou]/ => 0, 
    /^[^aeiouyx]/ => 0
    
  }

  def self.translate(word)
    input_word = word.clone
    array_check = input_word.split(" ")
    return_array = []
    array_check.each_with_index do |current_word, idx|
      mutate_word = current_word.clone
      return_array << mutate_word
      LOOK_UP_HASH.each do |k, v| 
        return_array[idx] << (return_array[idx][0..v]) if current_word.match(k)
        return_array[idx].slice!(0..v) if current_word.match(k)
        break if current_word.match(k)
      end
      return_array[idx]  << "ay"
    end
    return_array.join(" ")
  end
  
end