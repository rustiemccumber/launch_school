# Move the first letter of each word to the end of it,
# then add "ay" to the end of the word. Leave punctuation
# marks untouched.

# Examples
# pig_it('Pig latin is cool') # igPay atinlay siay oolcay
# pig_it('Hello world !')     # elloHay orldway !

=begin
- INPUT: a string 
- OUTPUT: as string converted into pig latin

-problem domain: leave puncutation untouched 

- implicit requirements:

- clarifying questions:

- edge cases

Algorithm:

split the string up into an array of words
on each word do a simultaneous reassingmnet 

EXAMPLES

=end 

def pig_it(string)

  string_array = string.split(" ")

  string_array.each { |word| word[0], word[-1] = word[-1], word[0]}

end 