
=begin

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

=end 

def palindrome?(value)
  value.downcase.delete("'") == value.reverse.downcase.delete("'")
end

def real_palindrome?(value)
  value = value.downcase.delete('^a-z0-9')
  palindrome?(value)
end

puts real_palindrome?('madam')
puts real_palindrome?('Madam')      
puts real_palindrome?("Madam, I'm Adam") 
puts real_palindrome?('356653') 
puts real_palindrome?('356a653')
puts real_palindrome?('123ab321') 
