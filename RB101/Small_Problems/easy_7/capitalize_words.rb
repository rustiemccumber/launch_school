=begin 

Write a method that takes a single String argument and returns a new 
string that contains the original value of the argument with the first 
character of every word capitalized and all other letters lowercase.
You may assume that words are any sequence of non-blank characters.

-input: string
-output: string with first letter of each word capitalized

algorithm
initialize string 
string.split(" ")
iterate through string caplitalizing each character and adding it to new_string

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

=end 
#WITHOUT CAPITALIZE METHOD

def word_cap(string)
  new_string = string.split.map { |word| word[0].upcase+word[1..-1]}.join(" ")
end

p word_cap('four score and seven') 
p word_cap('the javaScript language') 
p word_cap('this is a "quoted" word') 


=begin
#WITH CAPITALIZE METHOD
def word_cap(string)
  new_array = []
  string.split.each {|word| new_array << word.capitalize}
  new_array.join(" ")
end

p word_cap('four score and seven') 
p word_cap('the javaScript language') 
p word_cap('this is a "quoted" word') 
=end 

