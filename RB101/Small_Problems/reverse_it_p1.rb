
=begin 
Write a method that takes one argument, a string, 
and returns a new string with the words in reverse order.

input
 -string

output
 - string in reverse order

example outputs
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

=end 

def reverse_sentence(sentence)

  sentence.split.reverse.join(' ')

end

sentence_1 = "hi i'm a cat"

p reverse_sentence(sentence_1)