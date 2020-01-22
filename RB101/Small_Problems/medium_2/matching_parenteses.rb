=begin

Write a method that takes a string as argument, and returns true if all parentheses
in the string are properly balanced, false otherwise. To be properly balanced, 
parentheses must occur in matching '(' and ')' pairs.

Examples:

balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((s))) up(') == false
Note that balanced pairs must each start with a (, not a ).


-INPUT: string with paretheesis
-OUPUT: return a boolean (true or false) if the string has matching parenthisis 

algorithim

- initialize an empty array variable 
- iterate through the array an and << each '(' or ')' to the empty array 
- join into a string, if the count is not the same false
- if the first character ) false
- if the last character  ( false 



string.match?(/\b(\((\w*\s*)\)*) 
=end

def all_partheneses(string)

  parentheses_array = []
  string.chars.each do |char|
    if char == '(' || char == ')'
      parentheses_array << char 
    end 
  end 
  p parentheses_array.join 
end

def balanced?(string)

  string_of_parentheses = all_partheneses(string)

  if string_of_parentheses.match?(/(^\)|\($)/) 
    false  
  elsif string_of_parentheses.count('(') != string_of_parentheses.count(')')
    false
  else
    true
  end 
end 

p balanced?('What (is) this?') #== true
p balanced?('What is) this?') #== false
p balanced?('What (is this?') #== false
p balanced?('((What) (is this))?') #== true
p balanced?('((What)) (is this))?') #== false
p balanced?('Hey!') #== true
p balanced?(')Hey!(') #== false
p balanced?('What ((s))) up(') #== false
