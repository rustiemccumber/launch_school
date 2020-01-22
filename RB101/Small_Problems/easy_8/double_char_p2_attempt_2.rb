# Write a method that takes a string, and 
# returns a new string in which every consonant 
# character is doubled. Vowels (a,e,i,o,u), digits,
# punctuation, and whitespace should not be doubled.

# Examples:

=begin 

-input: string 
-output: string with every consonant doubled 

-problem domain: double only consonants 

-algorthim:

use the repeater from previous
create a conditionally if does not equal (aeiou, punctation, digits, \s double )



=end 

# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""


def double_consonants(string)

  result_string = ""
  string.chars.each do |char| 
    if char =~ /[^aeiou0-9.!_,'\s\-]/i 
      result_string << (char * 2)
    else 
      result_string << char
    end 
  end
  result_string

end 


p double_consonants('String') == "SSttrrinngg"
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""


