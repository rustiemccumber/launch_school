
#2:09
# In the easy exercises, we worked on a problem where we had 
# to count the number of uppercase and lowercase characters, 
# as well as characters that were neither of those two. Now
# we want to go one step further.

# Write a method that takes a string, and then returns a hash 
# that contains 3 entries: one represents the percentage of 
# characters in the string that are lowercase letters, one 
# the percentage of characters that are uppercase letters, 
# and one the percentage of characters that are neither.

# You may assume that the string will always contain at least
# one character.

=begin 

-input: string
- output: hash
  + percentage of the characters that are lowercase
  + percentage of characters uppercase
  + percentage of characters neith 

-problem domain: 
 The string will always include on character

algorithim:

initialize a variable case_hsh and set it to point to 
a has { lowercase: , uppercase: , neither}

for the value of lowercase: string.count('/[a-z]/')/string.size
for the  value of uppercase: (string.count('/[A-Z]/')/string.size)
for the value of neigher (string.count('/[^a-zA-Z]/'))

=end 

# Examples

# letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

def letter_percentages(string)

  array_characters = string.chars


  case_hsh = {
lowercase: ((array_characters.count { |char| char =~ /[a-z]/ }).to_f/array_characters.size * 100).round(2),
uppercase: ((array_characters.count {|char| char =~ /[A-Z]/}).to_f/array_characters.size * 100).round(2),
neither: ((array_characters.count { |char| char =~/[^A-Za-z]/}).to_f/array_characters.size * 100).round(2)
  }

end 

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI')
