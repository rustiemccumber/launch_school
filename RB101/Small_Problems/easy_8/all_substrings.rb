=begin

Write a method that returns a list of all substrings of a string. 
The returned list should be ordered by where in the string the substring begins. 
This means that all substrings that start at position 0 should come first, then all 
substrings that start at position 1, and so on. Since multiple substrings will occur 
at each position, the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the substrings_at_start method you wrote in the previous exercise:

input: string
output: 
  - array of substrings 
  - returns array of substrings which begin form start and end at the completion of string
  - then it selects the second character and iterates until the end of the string again
  - this continues until the last character is returned

algorithm 

create a loop that updates the string after each time the method substrings_at_start is called
 - the loop should delete the first character of the string before it is re-inserted into the mehod 


substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
=end 



def substrings_at_start(string)
  new_string = ''
  string.chars.map do |char|
    new_string += char
  end
end

=begin
def substrings(string)
  new_array = []
  0.upto(string.size - 1) do |count|
    new_array << substrings_at_start(string[count..-1])
  end
  new_array.flatten
end 

p substrings('abcde')
=end

def substrings(string)

  string.chars.each_with_index do |char, position|
    p position
  end
end 

p substrings('abcde')


 
    
