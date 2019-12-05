=begin 

Write a method that takes a non-empty string argument, and returns the middle character or 
characters of the argument. If the argument has an odd length, you should return exactly one character.
If the argument has an even length, you should return exactly two characters.

-input: string
-output: middle number of string
 - if string odd return exactly one number
 - if string even return eactly two numbers

algorithm
length = string.length
half = length/2
if length.odd?
  string[length/2]
if length.even?
  string[half..(half+1)]
end


center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

=end

def center_of(string)
  length = string.length
  half = length/2
  if length.odd?
   string[half]
  else
   string[(half - 1), 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
