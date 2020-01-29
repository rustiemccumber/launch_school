
#35
#In this simple Kata your task is to create a function 
# that turns a string into a Mexican Wave. You will be 
# passed a string and you must return that string in an 
# array where an uppercase letter is a person standing up.

# 1.  The input string will always be lower case but maybe empty.
# 2.  If the character in the string is whitespace then pass over 
# it as if it was an empty seat.

=begin 

- input: string
- output: an array of strings with mexican wave,
 uppercase each character as it iterates

 problem domain: 
  - the input string will always be lower case
  - if the there is whitespace it will be pased over 

algorithm:

- initialize a result_array
- split the string up into chars 
- 
- call each with index on the string_chars
    array_chars = string.chars
-   array_chars[idx].upcase! 
    result_array << array_chars 
 end 


=end 

# Example
# wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

def wave(string)
  
  result_array = []

  string.chars.each_with_index do | _char, idx |
    array_chars = string.chars 
    array_chars[idx].upcase!
    result_array << array_chars.join
  end 

  result_array
end 

p wave("hello")