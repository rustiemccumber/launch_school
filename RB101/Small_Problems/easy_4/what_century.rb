=begin

Write a method that takes a year as input and returns the century. The return value should be a
string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

-input: year (2000)
-output: century (20th century)

rules
 if century ends in 
  0 => th  
  1 => st
  2 => nd
  3 => rd
  4 => th
  5 => th
  6 => th
  7 => th
  8 => th
  9 => th

algorithym:
-convert number into array
-find last number in the array
-add number divided by 100 to the last number in the array 



Example:
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

=end 

def century(year)
  year_last_digit = year.to_s.split("").last.to_i
  if year_last_digit > 0 
    what_century = (year/100) + 1
  else
    what_century =  (year/100)
  end
  p what_century.to_s + what_ending?(what_century) 
end

def what_ending?(input)
return "th" if [11, 12, 13].include?( input % 100)
century_last_digit = input % 10

case century_last_digit
  when 0 then "th"
  when 1 then "st"
  when 2 then "nd"
  when 3 then "rd"
  else 'th'  
  end
end

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) =='113th'
