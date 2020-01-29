#Write a method that takes a string word as input
#and returns the middle character(s).
#If the string is an odd length, return the middle character,
#if it is an even length, return the two middle characters.

#Examples
  #get_middle('puppy') => 'p'
  #get_middle('crocodile') => 'o'
  #get_middle('hedgehog') => 'ge'
  #get_middle('zanzibar') => 'zi'




# -input: string
# -output: the middle characters
#   + two characters if it is an even number
#   + one character if it is an odd number 
  
# proble domain: 

# Algoritim: 
# -find if the is even or odd
#  _ if it is odd
#    + middle character = (string.size/2)
#    string[middle Character]
# - if it is even
#   string[middle character - 1] + string[middl character]



#You may assume that the string contains no spaces and contains only alphabetic characters


def get_middle(string)
  
  middle_char = string.size/2 
  
  return string[middle_char] if string.size.odd? 
  (string[middle_char - 1] + string[middle_char]) if string.size.even?
  
  if string.size.even?
    (string[middle_char - 1] + string[middle_char])
  else
    stuff
  end
  
end 

p get_middle('puppy') #=> 'p'
p get_middle('crocodile') #=> 'o'
p get_middle('hedgehog') #=> 'ge'
p get_middle('zanzibar') #=> 'zi'