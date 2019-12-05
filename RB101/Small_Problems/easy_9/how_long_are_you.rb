=begin

Write a method that takes a string as an argument, and returns an Array that contains every word 
from the string, to which you have appended a space and the word length.

You may assume that words in the string are separated by exactly one space, and that any substring 
of non-space characters is a word.

input: string
output: array of words, with a space and the word length appended 

algorithm:
-split sentence into array of words
-map a new array, appending a space and the length of the word onto each word



word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []
  
=end 

def word_length(string)
  string.split.map {|word| word << (" #{word.length}")}
end 

p word_length("It ain't easy, is it?") 

p word_length("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_length("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_length("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_length("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_length("") == []

