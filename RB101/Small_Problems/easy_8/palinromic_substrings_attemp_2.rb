# Write a method that returns a list of all substrings of a 
# string that are palindromic. That is, each substring must 
# consist of the same sequence of characters forwards as it
#  does backwards. The return value should be arranged in the 
#  same sequence as the substrings appear in the string. 
#  Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and
#  pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

=begin 

-input: string
-output: array of all palindromic substrings, case senstive 

-problem domain: case sensitive, arragned in same sequence as the substirngs
  appear in the string. duplicate palindromes multiple times

algorithim:

use the substrings method from the previous exerise:

loop through the return value of the substrings method using select

(substring.size > 1) && (substring.reverse == substring)

=end 

# Examples:

# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]


def substrings_at_start(string)

  substring = ""
  result = []

  string.map do |element| 
    substring += element
  end 
end 


def substrings(string)

  string_copy = string.dup.chars
  final_result = []
  
  until string_copy.empty? do 
    final_result << substrings_at_start(string_copy)
     string_copy.shift
   end 
   final_result.flatten
end 

def palindromes(string)
  array_substrings = substrings(string)

  array_substrings.select {|element| (element.size > 1) && (element.reverse == element)}
end 

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
