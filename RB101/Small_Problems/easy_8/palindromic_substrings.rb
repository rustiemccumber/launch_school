=begin

Write a method that returns a list of all substrings of a string that are palindromic. That is, each 
substring must consist of the same sequence of characters forwards as it does backwards. 
The return value should be arranged in the same sequence as the substrings appear in the string. 
Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case;
that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that 
single characters are not palindromes.

-input: string
-output: array of all palinedrome substrings 


palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

=end

def substrings_at_start(string)
  new_string = ''
  string.chars.map do |char|
    new_string += char
  end
end

def substrings(string)
  new_array = []
  0.upto(string.size - 1) do |count|
    new_array << substrings_at_start(string[count..-1])
  end
  new_array.flatten
end 

def palindromes(string)
  pal_arr =substrings(string).select do |word| 
    word == word.reverse && word.size > 1 
  end 
end 

p palindromes('abcd') == []
p palindromes('madam') == ['ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]