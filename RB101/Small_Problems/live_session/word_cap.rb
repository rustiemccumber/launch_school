=begin 
write a method that takes a single string argument and returns a new string
that contains the original value of the argument, but the first letter of every
word is now capitalized

# you may assume that the words are any sequence of non-blank characters, and 
that only the first first character of every word must be considered.

- INPUT: string
- OUTPUT: string
  + with every first letter of the word capitalized

problem domain:  words are any squence of non-blank characters, and that only the 
first character of every wor must be considered. 

Implicit Requirements: a new string is returned, do not mutate the original string

clarifying questions:

edge cases:

algorithm: 

split the string up into an array of words

loop through the array of words with `map` and capitalize each word 

initialize a variable and set it to point to the return value of the map call on the array

=end 

def word_cap(string)



   array_of_capitals = string.split(" ").map { |word| word[0].upcase + word[1..-1]}
   array_of_capitals.join(' ')

end 

p word_cap('four score and seven') == "Four Score And Seven"
p word_cap('the javaScript language') #== "The JavaScript Language"
puts word_cap('this is a "qouted" word ') == 'This Is A "qouted" Word'