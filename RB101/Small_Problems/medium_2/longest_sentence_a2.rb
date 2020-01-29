=begin 

Write a program that reads the content of a text file
and then prints the longest sentence in the file based 
on number of words. Sentences may end with periods (.), 
exclamation points (!), or question marks (?). Any sequence 
of characters that are not spaces or sentence-ending characters 
should be treated as a word. You should also print the number of words in the longest sentence.

problem domain:

- Sentences may end with periods (.), exclamation points (!) or
question makrs. 
- any sequences of charcters that are not spaces or sentence-ending characters
should be treated as a word. 

algorithim: 

read the text file.

-Split the text file into an array of sentences,

-sort the sentences based on the length of the sentences

p array.last
p array.last.size


=end



text = File.read('example_text.txt')
sentences = text.split(/\.|\?|!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words"
