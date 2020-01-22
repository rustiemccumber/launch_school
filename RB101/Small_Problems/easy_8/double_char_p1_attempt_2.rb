# Write a method that takes a string, and returns a new 
# string in which every character is doubled.

#input: string
#output: string with each character doubled

=begin 

- initalize a local variable and set it to point to an empty string 
- split the string up into chars
- iterate through the string with each 
- empty_string << "element" * 2 

- 

=end 

# Examples:

# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''


def repeater(string)

  result_string = ""
  string.chars.each {|char| result_string << (char * 2)}
  result_string

end 


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
