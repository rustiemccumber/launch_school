=begin

The year of 2013 is the first year after the old 1987 with only distinct digits.

Now your task is to solve the following problem: given a year number,
find the minimum year number which is strictly larger than the given one 
and has only distinct digits.

- INPUT: integer (between 1000 and 9000 )
- OUTPUT: output the next year that has distinct digits 

-problem domain: 1000 - 9000

- implicit requirements:

- clarifying questions:

- edge cases:

Algorithm: 
create a loop 
  add one to the year 
  convert the number to a string
  split the string into an array
  call uniq on the array 
  if year.join = year - 1 
  return year
end 





EXAMPLES

distinct_digit_year(2012) #=> 2013

distinct_digit_year(1999) #=> 2013

=end

require 'pry'
require 'pry-byebug'


def distinct_digit_year(input_year)
  year = input_year
  #binding.pry
  loop do 
    year += 1
    year_array = year.to_s.split('')
    year_string_uniq = year_array.uniq.join("")
    return year if year.to_s == year_string_uniq
    break if year.to_s == year_string_uniq 
  end 
end 


p distinct_digit_year(2012) #=> 2013

p distinct_digit_year(1999) #=> 2013 