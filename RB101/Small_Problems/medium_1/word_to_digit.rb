# Write a method that takes a sentence string as input, and returns the same string with 
# any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' 
# converted to a string of digits.

#INPUT: string with with number words with
#OUTPUT: string with numbers converted to digits 

#ALGORITHM

=begin
- split the string into an array of worlds, initialize variable and asign to `array_of_words` 
- iterate through the string with `map` transforming any words into digits, assign to return value to `array_of_digits`
  +create a case statement to transform each word into numbers
-join the array_of_digits back into a string 

=end

#  def word_to_digit(string)

#   array_of_words = string.split

#   array_of_digits = array_of_words.map do |word|
#     case word
#     when /\bzero\b/  then '0'
#     when 'one'   then '1'
#     when 'two'   then '2'
#     when 'three' then '3'
#     when /\bfour\b/ then '4'
#     when 'five'  then '5'
#     when 'six'   then '6'
#     when 'seven' then '7'
#     when 'eight' then '8'
#     when 'nine'  then '9'
#     else               word 
#     end 
#   end 
#   array_of_digits.join(" ")
# end 

DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

p word_to_digit('Please call me freight at fives five five one two three four. Thanks.')

