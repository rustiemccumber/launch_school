# Write a method that takes one argument, 
# a positive integer, and returns a string of
# alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

=begin 

-input: positive integer
- output: alternating 0s and 1s 

-problem domain: input is always a positive integer and string
will always start with 1. the length of the string should match 
the integer length 

algorithm:

1.upto(n). if num is odd? emptry string << '1'
if number is even? empty string << '0'


=end 



# Examples:

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
# The tests above should print true.

def stringy(final_number)

  str = ""

  1.upto(final_number) do |num| 
    if num.odd?
      str << '1' 
    elsif num.even?
      str << '0'
    end
  end 

  str 

end 

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

 