
=begin 

Write a method that takes a String as an argument, and returns a new String that 
contains the original value using a staggered capitalization scheme in which every
other character is capitalized, and the remaining characters are lowercase. 
Characters that are not letters should not be changed, but count as characters 
when switching between upper and lowercase.

algorithm
initialize new_string 
use each_with_index
  - if index = 0 || index.even?
      new_string << char.upcase 
  - if index.odd?
      new_string << char.downcase
end 


Example:

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

=end 

def staggered_case(string)
  new_string = string.chars.map.each_with_index do |item, index|
    if index == 0 || index.even?
      item.upcase
    elsif index.odd?
      item.downcase
    end
  end
  new_string.join 
end 

p staggered_case('I Love Launch School!') 
p staggered_case('ALL_CAPS')
p staggered_case('ignore 77 the 444 numbers') 
        