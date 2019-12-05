=begin
Write a method that takes a string argument, and returns true if all of the alphabetic 
characters inside the string are uppercase, false otherwise. Characters that are not 
alphabetic should be ignored.

-input: string
-ouput: returns true if all are uppercase,false otherwise
  -ignore all non-alphabetic characters

algortihm:
split string into chars
use all? to iterate through the string and check the requirments


uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true
=end

CHARACTERS_UPPER = ('A'..'Z').to_a
CHARACTERS_LOWER = ('a'..'z').to_a

def uppercase?(string)
  string.chars.all? do |char| 
      if CHARACTERS_LOWER.include?(char)
        false
      elsif CHARACTERS_UPPER.include?(char) == false
        true
      else CHARACTERS_UPPER.include?(char)
        true
    end
  end
end 

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true