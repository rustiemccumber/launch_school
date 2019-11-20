=begin
Write a method that takes a string with one or more space separated words
and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.
input= string
output = hash 
  -key word length
  -value occurances of words

algorthm
-initalize a hash
-split string into an array of words string.split(" ")
-iterate through string add word.length to hash 
-add occurances to hash


examples
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

#my_answer 
def word_sizes(string)
  string_array = string.split
  count_hash = {}
  string_array.each do |word|
    count_hash[word.length] = 0
  end 
  string_array.each do |word|
    count_hash[word.length] += 1
  end 
count_hash
end
=end 

def word_sizes(words_string)
  counts = Hash.new(0)
  array_chars = words_string.split 
  array_chars.each do |word|
    word.gsub!(/[^a-z]/i, "")
    counts[word.length] += 1
  end
  counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

