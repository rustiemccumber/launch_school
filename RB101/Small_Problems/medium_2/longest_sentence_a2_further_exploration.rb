# RETURNING THE SENTENCE WITHOUT REMOVING THE WORDS
# positive look-behind, which can locate the point just past the 
# split delimiter, without consuming the delimiter. 


# text = File.read('example_text.txt')
# sentences = text.split(/(?<=[.?!])/)
# largest_sentence = sentences.max_by { |sentence| sentence.split.size }
# largest_sentence = largest_sentence.strip
# number_of_words = largest_sentence.split.size

# puts "#{largest_sentence}"
# puts "Containing #{number_of_words} words"


# RETURNING THE LONGEST PARAGRAPH
# New paragraphs are denoted by two newline characters
# split based on the two new line characters. 
# max_by size 



text = File.read('example_text.txt')
paragraph = text.split(/\n\n/)
largest_paragraph = paragraph.max_by { |paragraph| paragraph.split.size }

largest_paragraph = largest_paragraph.strip
number_of_words = largest_paragraph.split.size

 puts "#{largest_paragraph}"
puts "Containing #{number_of_words} words"