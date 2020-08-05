
#- dont' underestimate: resist the urger to dive into code
#- read the description 3 times; produce and outline if necessary
#- communicate and clarify
#- have a plan (algorithm) and verify with that
#- test cases (happy paths, fail paths, edge cases)
#- manage your energy

#consider a character set consisting of letters, a space and a point.
#words consist of one ore mor but at most 20 letters.

#an input consists of:
#- one ore more words
#- separated from each other by one or more spaces
#- terminated by 0 or more spaces
#-followed by a point


#input should be read from, and including, the first letter of the first word
# up to and includding the terminating point.

# the output text should be such that successive words are separated by
# d signle space with the last word terminated by a single point. 

# odd words (belonging to odd array values, 1, 3, 5 etc, not the length of the word) are copied in revers ordeer while even words are merely echod.

#bonus points: the characters must be read and printed one at a time


#my attempt


# def fix(string)
#   array_of_chars = string.chars
#   result_array = []
#   counter = 0
#   word = ''
#   array_of_chars.each do |char|

#     if counter.odd? && char == ' '
#       result_array << word.reverse
#       word = ''
#       counter = 0
#     elsif char == ' '
#       result_array << word 
#       word = ''
#       counter = 0
#     elsif char == '.'
#       word << char 
#       result_array << word
#     else
#       word << char
#       counter += 1 
#     end 
#   end
#   result_array.delete('')
#   result_array.join(" ")
# end 

# #example

# string = "whats the matter with kansas."

# puts fix(string) #== "stahw eht matter htiw kansas."

#algorithm
# break the string into individual chars 
# set a counter equal to 0
# with each char that isn't  a whitespace increment the counter by on and 
# and the char into a temperay array, reset the counter if a white space is encounter and do not increment the counter
# if the char is a period append the char to the last word
# join the array at the end 
# if a word is greater than 20 letters return an error 


#launch school solution

# - chars: letter, space, point ]
#  - any invalid inputs? (??///[])) what should we do with thme
# - words: 1-20 letters
#   - more than 20 letters?
# input: 
#  - 1 - * words, seperated by 1 - * spaces
#  - eeperated by 1- * spaces
# - terminated: 0 - * spaces, followed by a point 
#output:
# - words: have the odd words reversed
# -separaed by 1 space
# - terminated: 0 space, fllowed by a point 

def reverse_odd_words(string)
  array_words = string.gsub(".", "").split(" ")
  array_words.map!.with_index do |word, idx|
    if idx.odd?
      word.reverse
    else 
      word
    end 
  end
  return_string = array_words.join(" ")
  return_string << '.' if string.chars.last == '.'
  return_string
end 


#input 
  # edge cases
  # - ""
  # - "."
  # - " hello . "

#test cases:
puts reverse_odd_words("") #=> ""
puts reverse_odd_words(".") #=> "."
puts reverse_odd_words("hello") #=> "hello"
puts reverse_odd_words("hello word.")  #=> "hello drow"
puts reverse_odd_words("hello word .")  #=> "hello drow"
puts reverse_odd_words("hello  word .")  #=> "hello drow"
puts reverse_odd_words("hello word  .") #=> "hello drow"
puts reverse_odd_words("hello word world .") #=> "hello drow world."

#- split the string into an array (consider multiple spaces)
#- string reverse the odd elements
#  - if the string ends with a dot, then the dot is kept to the end 

