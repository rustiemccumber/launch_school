#INPUT: integer (nth number of fib sequence)
#OUTPUT: fib number at n

# initialize empty array fib_array = [] 
# for n.times do |interation|
# if interation <= 2
#   fib_array << 1
# elsif interation >= 2
#   fib_array << sum_all 
#   + fib_array << fib_array.sum 
#fib_array.last  


#fibonacci(20) == 6765
# fibonacci(100) == 354224848179261915075
# fibonacci(100_001) 

#fibonacci_2

=begin 

-Input: nth number
-Output: fib number at nth number 


Algorthim:

-Initialize variable `first` assign 1 to it
- initialize variable `second` assign 2 to it 

- from 3.upto.n
  - initialize a variable `last` and set it to point to the sum of (first + second)
  - do double assignment first, second = second, last 
- return last 

=end 



# def fibonacci(n)

#   fib_array = []

#   n.times do |iteration|
#     if iteration <= 2
#       fib_array << iteration 
#     else 
#       fib_array << (fib_array[iteration - 2] + fib_array[iteration - 1])
#     end 
#   end 
#   fib_array.last 
# end 

def fibonacci_2(n)
  first = 1
  second = 1
  last = 0 

  3.upto(n) do |iteration|
    last = (first + second)
    first, second = second, last 
  end 

  last 
end 

p fibonacci_2(20) == 6765
p fibonacci_2(100) == 354224848179261915075
p fibonacci_2(100_001)