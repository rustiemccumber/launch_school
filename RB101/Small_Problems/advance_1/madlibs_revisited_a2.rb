# Let's build another program using madlibs. 
# We made a program like this in the easy exercises. 
# This time, the requirements are a bit different.

# Make a madlibs program that reads in some text from a text 
# file that you have created, and then plugs in a selection of 
# andomized nouns, verbs, adjectives, and adverbs into that text 
# and prints it. You can build your lists of nouns, verbs, adjectives, 
# and adverbs directly into your program, but the text data should come 
# from a file or other external source. Your program should read this text, 
# and for each line, it should place random words of the appropriate types 
# into the text, and print the result.

# The challenge of this program isn't about writing your program; it's 
# about choosing how to represent your data. Choose the right way to 
# structure your data, and this problem becomes a whole lot easier. 
# This is why we don't show you what the input data looks like; the 
# input representation is your responsibility.

=begin 

- input: a text file 
- output: the text file with all the adjectives, adverbs, and 
nouns switch with random values.

-problem domain: 

algorithim: 

- initialize an empty hash 
- read the text file and set it equal to point to a variable text
- split the text upto into and array of works
- iterate trhough the array 
- replace the word with the value of the hash randomly selected


=end 

# Example output:

# The sleepy brown cat noisily
# licks the sleepy yellow
# dog, who lazily licks his
# tail and looks around.

words_hash = {
  "adj" => ["tall", "small", "fat"],
  "verb" => ["runs", "walks", "looks"],
  "adverb" => ["slowly", "quickly", "painfully"],
  "noun"  => ["cat", "dog", "fish"]

}

text = File.read('madlibs_read.txt')

array_text = text.split(" ")

new_text = array_text.map do |word|
  if words_hash.keys.include?(word)
    words_hash[word].sample 
  else
    word 
  end 
end 

p new_text

