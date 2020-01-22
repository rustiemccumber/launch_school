=begin
  

  In this simple Kata your task is to create a function that turns 
  a string into a Mexican Wave. You will be passed a string and you must return that string in an 
  array where an uppercase letter is a person standing up.

  Rules
  1.  The input string will always be lower case but maybe empty.
2.  If the character in the string is whitespace then pass over it as if it was an empty seat.
Example
wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

=end 

require 'pry'
require 'pry-byebug'

def wave(string)
   
   
   result = []
   idx = 0

   binding.pry

  loop do 
    string_no_whitespace = string.gsub(/\s/, '')
    string_no_whitespace[idx] = string_no_whitespace[idx].upcase
    result << string_no_whitespace 
    idx += 1
    break if idx == string_no_whitespace.size 
  end 
  result 


end 

p wave("hello")