# Write a program that reads the content of a text file and then prints the longest sentence
# in the file based on number of words. Sentences may end with periods (.), exclamation points
# (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending 
# characters should be treated as a word. You should also print the number of words in the longest sentence.


# INPUT: TEXT FILE
# OUTPUT: Longest Sentence, and word cound of the sentence. 

#RULES:
# - Sentences may end with periods (.), excalaimation points (!), or questions marks (?). 
# -  any sequence of words that is not spaces  should be 



#ALGORITHM

=begin
# - Initialize an empty string, full_text 
  - Initialize a variable longest_sentence and assign an empty array to it
  - Initialize a variable sentence_compare and assign and empty array to it
# - Iterate through the text file and move each line to full_text_string 
  - initailize full_text_array.
    + split the string into an array assign this the full_text_array
  - Iterate through full_text_array (each_with_index)
  - Get the first index = 0 and assign it to inital_index_longest
  - Get the las index = x and assign it to intial_index shortest
  - start a counter that counts each word (longest)
  - start a counter that counts each word 
=end 

text = File.read('example_text.txt')

sentences = text.split(/\.|\?|!/)

longest_sentence = sentences.max_by {|sentence| sentence.split.size}

longest_sentence = longest_sentence.strip 

longest_sentence_size = longest_sentence.split.size 

p longest_sentence
p longest_sentence_size


