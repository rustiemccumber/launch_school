# In this kata you are required to, given a string, 
# replace every letter with its position in the alphabet.

# If anything in the text isn't a letter, ignore it and don't 
# return it.

# "a" = 1, "b" = 2, etc.

# Example
# alphabet_position("The sunset sets at twelve o' clock.")
# Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" (as a string)

=begin

-input: string
- output: a string but every number in the alphabet replaced
with its position in the alphabet

-problem domain: "a" = 1 "b" = 2
- if there is anything in the text that isn't a letter, ignore it 


algorithim:

- initalize a gobal variable ALPHABET and set it to point to the the alphabet

- split the string up into chars set a local variable to point to it

- intialize an empty array 
- iterate through the array_string 
next if char != 'a-z'
Alphabet.each_with_index |letter, idx| empty_array << idx + 1 if char == letter 


=end
ALPHABET = ('a'..'z').to_a

def alphabet_position(string)

  result_array = []

  string.downcase.chars.each do |char|
     ALPHABET.each_with_index do |letter, idx|
      (result_array << (idx + 1)) if char == letter
    end
  end 

  result_array.join(" ")
   
end

p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
# Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" (as a string)

