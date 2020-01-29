# Given a string that includes alphanumeric 
# characters ('3a4B2d') return the expansion 
# of that string: The numeric values represent 
# the occurrence of each letter preceding that 
# numeric value. There should be no numeric 
# characters in the final string. Empty strings 
# should return an empty string.

# The first occurrence of a numeric value should 
# be the number of times each character behind it 
# is repeated, until the next numeric value appears.

# string_expansion('3D2a5d2f') == 'DDDaadddddff'
# string_expansion('3abc') == 'aaabbbccc'       # correct
# string_expansion('3abc') != 'aaabc'           # wrong
# string_expansion('3abc') != 'abcabcabc'       # wrong

# If there are two consecutive numeric characters the 
# first one is ignored.

# string_expansion('3d332f2a') == 'dddffaa'
# If there are two consecutive alphabetic characters
# then the first character has no effect on the one after it.

# string_expansion('abcde') == 'abcde'
# Your code should be able to work for both lower and
# capital case letters.

# string_expansion('') == ''

=begin 

-input: alphanumeric string
-output: string 
 +numbers proceeding a character will result in repeating each
 follow character that may times until another number is encountered

-problem domain: should work for both lower and upper case

Algorithim:

- initialize an empty array result array

- Split the string up into an array 

- initialize a local variable multiplier and set it to 1

- iterate through the array with each 
  
- else
  + multiplier.times {result << char}
- if char == char.to_i.to_s
  + multipliper = char 


=end


def string_expansion(string)

  result_array = []
  array_of_chars = string.chars 
  multiplier = 1

  array_of_chars.each do |char| 
    if char == char.to_i.to_s
       multiplier = char.to_i 
    else 
      multiplier.times { result_array << char}
    end 
  end 
  result_array.join
end 

p string_expansion('3D2a5d2f') == 'DDDaadddddff'
p string_expansion('3abc') == 'aaabbbccc'  
p string_expansion('') == '' 
p string_expansion('3d332f2a') == 'dddffaa'
