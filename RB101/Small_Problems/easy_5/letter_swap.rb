=begin 
Given a string of words separated by spaces, write a method that 
takes this string of words and returns a string in which the first
 and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that 
the string will always contain at least one word. You may also assume
that each string contains nothing but words and spaces

algorithm
split into array of words
split array of words into nested array of letters
get the first and last character 
 - first = array.first
 - last = array.last 
  word.shift
  word.pop
  word.unshift(first)
  word << last
  word.join 


input = string
output = string with the first and last letter of each word swapped 

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'
=end 

def swap(string)
  array_of_words = string.split(" ")
  array_of_words.each {|word| word[0] , word[-1] = word[-1], word[0]}
  array_of_words.join(" ")
end

p swap('Oh what a wonderful day it is')
