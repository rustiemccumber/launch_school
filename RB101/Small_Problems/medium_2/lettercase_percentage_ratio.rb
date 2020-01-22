# In the easy exercises, we worked on a problem where we had to count the number of uppercase 
# and lowercase characters, as well as characters that were neither of those two. Now we want
#  to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents 
# the percentage of characters in the string that are lowercase letters, one the percentage of characters 
# that are uppercase letters, and one the percentage of characters that are neither.

#INPUT: string 
#OUTPUT: hash with percantage upper, lower, and neither case 

=begin
  
Algorithm 

- Initialize a variable, hsh  and set it equal to empty hash {}
}
  
- `each` through the string adding +1 if lower case, +1 if uppercase, +1 if neither 
  + if char == /[a-z]/
    hash[uppercase:] += ((1/string.size) * 100)
- etc 



=end

# You may assume that the string will always contain at least one character.

# Examples

# letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

require 'pry'
require 'pry-byebug'

def letter_percentages(string)

  array = string.chars 
  hsh = {lowercase: 0,
  uppercase: 0,
  neither: 0}
  #binding.pry
  array.each do |char|
    if ('a'..'z').include?(char)
      hsh[:lowercase] += ((1.00/array.size) * 100).round(2)
    elsif ('A'..'Z').include?(char)
      hsh[:uppercase] += ((1.00/array.size) * 100).round(2)
    else 
      hsh[:neither] += ((1.00/array.size) * 100).round(2)
    end 
  end
  hsh
end

p letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') #== { lowercase: 0, uppercase: 0, neither: 100 }