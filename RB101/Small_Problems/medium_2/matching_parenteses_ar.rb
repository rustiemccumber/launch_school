# 3: 02
#Write a method that takes a string as argument, 
# and returns true if all parentheses in the string
#  are properly balanced, false otherwise. 
#  To be properly balanced, parentheses must occur in matching 
#  (' and ')' pairs.

=begin 

-input: string 
-output: boolean
 + true if the parentheses are balanced
 + false if the parentheses are not balanced 

-problem domain: balanced pairs must start with a '(' and not ')'


algorithim 

-split the string up into characters 
- initialize a variable paranthese_count = 0
- if char == '('  parenthese_count += 1
- if char == ')'  parenthese_count -= 1
  return false if parenthese_count == - 1
- outside of the loop evaluate the parenthese_count
   + parenthese_count == 0


=end 



# Examples:

# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false
# Note that balanced pairs must each start with a (, not a ).

def balanced?(string)

  array_of_chars = string.chars 
  parenthese_count = 0 
  
  array_of_chars.each do |char|
    if char == "("
      parenthese_count += 1
    elsif char == ")"
      parenthese_count -= 1
    end 
    return false if parenthese_count == -1
  end 

  parenthese_count == 0 
end 


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

