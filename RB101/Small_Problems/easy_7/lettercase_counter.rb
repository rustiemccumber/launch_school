=begin 

Write a method that takes a string, and then returns a hash that contains 3 entries: one 
represents the number of characters in the string that are lowercase letters, one the number 
of characters that are uppercase letters, and one the number of characters that are neither.

input/output:
input: string
output: hash 
  -keys/values
    -lowercase: count
    -uppercase: count
    -neither: count

algorithm 
initialize hash

if string == string.upcase
  hash[:uppercase] +=1
elsif string == string.downcase
  hash[:lowercase] += 1
else 
  hash[:neither]  +=1
end 



example:
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

=end 

def letter_case_count (string)
  new_hash = {lowercase: 0 , uppercase: 0 , neither: 0}
  string.split('').each do |char|
    if char =~ /[A-Z]/
      new_hash[:uppercase] += 1
    elsif char =~ /[a-z]/
      new_hash[:lowercase] += 1
    elsif char =~ /[^A-Za-z]/
      new_hash[:neither] += 1
    end
  end
  new_hash
end 


p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef')
p letter_case_count('123')
p letter_case_count('')
