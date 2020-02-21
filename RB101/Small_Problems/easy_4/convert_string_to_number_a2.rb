# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

=begin

-input: string
-output: integer represenation of that string 

-problem domain: alwasy positive, cant use to_i 


algorithim: 

- initialize a variable (result) and have it point to 0 
- initialize a local variable and have string_reverse it poijnt to the string.reverse  
- iitializae a variable and have it point to a hash, with strings as the keys and numbers as the values

- iterate throught the reversed string each with index
  within the loop:
   result += HSH[num] ** idx if idx > 0
   result += HSH[num]

  
=end 

# Examples

# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

HSH = { 
  '0' => 0,
'1' => 1,
 '2'=> 2,
 '3' => 3, 
 '4' => 4, 
 '5'=> 5, 
 '6' => 6 ,
 '7' => 7,
 '8' => 8,
 '9' => 9
}

def string_to_integer(string)
  
  result = 0 
  string_reverse = string.reverse

  string_reverse.chars.each_with_index do |num, idx|
    result += HSH[num] * (10 ** idx) if idx > 0
    result += HSH[num] if idx == 0 
  end 

  result 

end 

p string_to_integer('4321') #== 4321
p string_to_integer('570') #== 570
