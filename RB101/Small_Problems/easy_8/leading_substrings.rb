=begin 

Write a method that returns a list of all substrings of a string that start at the 
beginning of the original string. The return value should be arranged in order from
shortest to longest substring.

-input: string 
-output: array of strings. each string is the first letter to the current letter of the original string.
this continues until the original string is complete at the last position of the array 

algorithm
initialize and empty string 
map a new array combine the with string += "current"


substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
=end 

def substrings_at_start(string)
  new_string = ''
  string.chars.map do |char|
    new_string += char
  end
end 

p substrings_at_start('abc')
p substrings_at_start('a') 
p substrings_at_start('xyzzy')