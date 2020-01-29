# Write a method that takes a sentence string as input, 
# and returns the same string with any sequence of the words 
# 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'
# converted to a string of digits.

=begin 

-input: string
-output: string with all number words replaced with numbers

Algorithim:

initialize a hash: and populate it with number words as keys, and
corresponding numbers as values

iterate through the hash, and attempt to gsub each number word to numbers

=end 

# Example:

# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'


def word_to_digit(string)
  
  number_word_hash = {
    "zero" => "0",
    "one" => "1", 
    "two" => "2",
    "three" => "3",
    "four" => "4",
    "five" => "5",
    "six" => "6",
    "seven" => "7",
    "eight" => "8",
    "nine" => "9" 
  }


  number_word_hash.each  do |word, num| 
    #string.gsub!('/#{word}\s#{word}/', '/#{word}#{word}/') #attempt at further exploration
    string.gsub!(/\b#{word}\b/, num)

  end 


  string 
end 

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'


