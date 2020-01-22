# Write a method that takes a string argument and
# returns a new string that contains the value of 
# the original string with all consecutive duplicate 
# characters collapsed into a single character. You may
#  not use String#squeeze or String#squeeze!.

=begin 

- input: string
- output: string
  + string doesn't have duplicates 

problem domain: return a new string, don't use squeeze or squeeze

algorithim

split the string up into an array of characters

create an empty array

loop through the array with each with index, if the next charcter
in the array is not the same character, empty_array << char

=end 

# Examples:


# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''


def crunch(string)

  result_array = []

  split_array = string.split("")

  split_array.each_with_index { |item, idx| (result_array << item) if item != split_array[idx + 1]}
  
  result_array.join

end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
