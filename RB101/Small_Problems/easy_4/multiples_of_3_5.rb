=begin

Write a method that searches for all multiples of 3 or 5 that lie between 
1 and some other number, and then computes the sum of those multiples. 
For instance, if the supplied number is 20, the result should be 98 
(3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

method 

-input number 
-intermediate outputs
 -all mutiples of 3 
 -all muiliples of 5 between 1 and number 
-output sum of all mutliples of 3 and 5 between that number


=end 
=begin
def multiples_3_5(input)

  multiples_array = []

    1.upto(input) do |num| 
      multiple_3 = num * 3
      multiple_5 = num * 5
      multiples_array << multiple_3 unless multiple_3 >= input
      multiples_array << multiple_5 unless multiple_5 >= input
      if num == input && (num % 3 == 0 || num % 5 == 0) 
        multiples_array << num
      end 

    end
  multiples_array.sort.uniq.sum 
end 

p multiples_3_5(3) == 3
p multiples_3_5(5) == 8
p multiples_3_5(22) == 119
p multiples_3_5(1000) == 234168
=end 


def multiple?(number, divisor)
  number % divisor == 0
end

 

def multisum(max_value)
  sum = []
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum << number
    end
  end
  sum.inject(:+)
end

p multisum(22) 
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

