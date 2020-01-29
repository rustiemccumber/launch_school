=begin
Please write word or multiple words: walk
There are 4 characters in "walk".

=end 

puts "please enter a word or sentence"
word_sentence = gets.chomp.chars.delete_if {|char| char == " "}

p word_sentence.length