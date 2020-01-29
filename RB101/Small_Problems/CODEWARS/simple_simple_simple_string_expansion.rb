=begin


Given a string that includes alphanumeric characters ('3a4B2d') return the expansion of 
that string: The numeric values represent the occurrence of each letter preceding that numeric value. 
There should be no numeric characters in the final string. Empty strings should return an empty string.

The first occurrence of a numeric value should be the number of times each character behind it is repeated,
until the next numeric value appears.

string_expansion('3D2a5d2f') == 'DDDaadddddff'
string_expansion('3abc') == 'aaabbbccc'       # correct
string_expansion('3abc') != 'aaabc'           # wrong
string_expansion('3abc') != 'abcabcabc'       # wrong
If there are two consecutive numeric characters the first one is ignored.

string_expansion('3d332f2a') == 'dddffaa'
If there are two consecutive alphabetic characters then the first character has no effect on the one after it.

string_expansion('abcde') == 'abcde'
Your code should be able to work for both lower and capital case letters.

string_expansion('') == ''

- INPUT: Alphanumberic string with a letter before each number
- OUTPUT: string, number of characters after the number repeated that many times 

-problem domain: shouw work for upper and lowercase 

- implicit requirements:

- clarifying questions:

- edge cases

Algorithm:

create a loop, loop through the string.  Until the you encounter 


EXAMPLES
  
=end

