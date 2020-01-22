# Welcome.

# In this kata you are required to, given a string, 
# replace every letter with its position in the alphabet.

# If anything in the text isn't a letter, ignore it and 
# don't return it.

# "a" = 1, "b" = 2, etc.

# Example
# alphabet_position("The sunset sets at twelve o' clock.")
# Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" (as a string)

=begin
- INPUT: a string
- OUTPUT: a string with all the characters represented by their position in
the alphabet 

-problem domain:

- implicit requirements: return a string with spaces between each number

- clarifying questions:

- edge cases

Algorithm:

gsub all characters which spaces in the string with ''
gsub all the punctuation in the string with ''

EXAMPLES

=end

require 'pry'
require 'pry-byebug'

ALPAHBET = ('a'..'z').to_a


def alphabet_position(string)

  #binding.pry

  hsh = {}
  
  ALPAHBET.each_with_index {|char, idx| hsh[char] = (idx +1)}

  array_alphbet_position = []

   string_cleaned = string.gsub(/\s/, '').gsub(/[,.!\']/, '').downcase

   array_string = string_cleaned.split("")

   array_string.each {|char| array_alphbet_position << hsh[char]}
   
   array_alphbet_position.join(" ")
end

p alphabet_position("The sunset sets at twelve o' clock.")
