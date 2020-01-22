# Write a method that takes a string, and then returns a
# hash that contains 3 entries: one represents the number 
# of characters in the string that are lowercase letters, 
# one the number of characters that are uppercase letters, 
# and one the number of characters that are neither.

=begin 

-input: string
-output: hash
  + three keys: lowercase: , uppercase: and neither, and count of each
  in the string


Algorithim 
intialize a hash that has lower, upper, and neighter

for key of the hash do string.coun

=end 

# Examples

# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }


def letter_case_count(string)

  count_hash = {
    lowercase: string.count('a-z'),
    uppercase: string.count('A-Z'),
    neither: string.count('^a-zA-Z')
  }

end 


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

