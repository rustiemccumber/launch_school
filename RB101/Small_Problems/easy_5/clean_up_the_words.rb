=begin

Given a string that consists of some words and an assortment of non-alphabetic characters, 
write a method that returns that string with all of the non-alphabetic characters replaced by spaces.
If one or more non-alphabetic characters occur in a row, 
you should only have one space in the result (the result should never have consecutive spaces).

input = string with a mixture of letters and other characters
output = string with all non letters replaced with spaces 
 - no more than one consecutive space

 algothrim
 -input string
 -gsub any word letter that is not [a-z] with " "
 -if consecutive spaces delete
 


cleanup("---what's my +*& line?") == ' what s my line '

=end 
ALPHABET = ("a".."z").to_a

#def cleanup(string)
#  string.gsub(/[^a-z]+/i, ' ')
#end

def cleanup(string)
  array_of_words = string.split('') 
  array_of_excluded_characters = array_of_words.each do |char| 
    if ALPHABET.include?(char) == false
      char.gsub!(char, " ")
    end
  end
  array_of_excluded_characters.join.squeeze(" ")
end 

p cleanup("---what's my +*& line?")