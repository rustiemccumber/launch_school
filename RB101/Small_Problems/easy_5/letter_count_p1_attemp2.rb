# Write a method that takes a string with one or 
# more space separated words and returns a hash 
# that shows the number of words of different sizes.

# Words consist of any string of characters that 
# do not include a space.

=begin 

- input: string
- ouput: hash

mental model: input string, output a hash that returns the various
size of words and the occurence of each size. 

problem domain: words consist of any stirng of characters that 
do not include a space

algorithim:


- initialize an empty hash

- split the string up into an array of words

- integer through the array with each and the length of the word
and += 1 value to the hash with each occurence.





=end 

# Examples

# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}


def word_sizes(string)

  hash_word_count = Hash.new(0)

  array_of_words = string.split(" ")

  array_of_words.each { |word| hash_word_count[word.length] += 1}

  hash_word_count

end 


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

