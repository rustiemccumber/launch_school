
=begin 
Write a method that takes a string, and returns a new string in which every character is doubled.

-input: string
-output: new string in which each char is doubled 

algorithm 

iterate each through string.chars.
at each char string == (char + char)

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

=end 

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  repeated_string = ''
  string.chars.each do |char|  
    if CONSONANTS.include?(char.downcase)
      repeated_string += (char + char)
    else
      repeated_string += char
    end
  end
  repeated_string
end 


p double_consonants('Hello') #== "HHeelllloo"
p double_consonants("Good job!") #== "GGoooodd  jjoobb!!"
p double_consonants('')# == ''