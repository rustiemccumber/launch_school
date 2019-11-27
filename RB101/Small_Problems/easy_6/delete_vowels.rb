=begin
write a method that takes an array of strings, and returns an array of the same string values,
except with the vowels (a, e, i, o, u) removed.

algorithm 


-iterate through array of sting with select
-select chars that include are included in a,e, i o,o   [a,e,i,o,o].include?(char)



remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
=end 

def remove_vowels(string)
  string.map do |word|
    word.delete "aeiouAEIOU" 
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) 
p remove_vowels(%w(green YELLOW black white)) 
p remove_vowels(%w(ABC AEIOU XYZ))