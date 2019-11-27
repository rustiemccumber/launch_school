=begin 
Write a method that takes a string as an argument and returns a new string 
in which every uppercase letter is replaced by its lowercase version, and 
every lowercase letter by its uppercase version. All other characters should
be unchanged.
You may not use String#swapcase; write your own version of this method.

 -input: string
 -output: new string
   -every uppercase is switched with lowercase
   -every lowercase is switched with uppercase
   -other characters are left unchanged

algorithm 
new_string = each_char 
if char =~ /[A_Z]/
  char.downcase
if char =~ /[a-z]/


swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'


=end 

def swapcase(string)
  
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

p swapcase('CamelCase') 
p swapcase('Tonight on XYZ-TV') 