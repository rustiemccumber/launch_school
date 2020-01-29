# Write a method that returns a list of
# all substrings of a string that start at 
# the beginning of the original string. 
# The return value should be arranged in order
# from shortest to longest substring.

=begin 

- input: string 
- output: list of substrings starting from the first character

- problem domain: arrange from shortest to largest

- intialize a local variable substring and set it equal to " "

- split the string up into an array of chars

- iterate though the array of chars with map, substring += char 


=end 

# Examples:

# substrings_at_start('abc') == ['a', 'ab', 'abc']
# substrings_at_start('a') == ['a']
# substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

def substrings_at_start(string)

  substring = ""
  result = []

  string.chars.map do |element| 
    substring += element
  end 
end 

p substrings_at_start('abc') #== ['a', 'ab', 'abc']
p substrings_at_start('a') #== ['a']
p substrings_at_start('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

