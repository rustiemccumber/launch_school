=begin 

algorithim

- use the fibonacci number calculator from the last exercise

- convert the fibonnaci number into a string
- conver the stirng into an array
- return the last value of the array .to_i

=end 


def fibonacci_last(n)

  fib_array =[1, 1]
  (n - 2).times {fib_array << (fib_array[-2] + fib_array[-1])}
  
  fib_array[-1].to_s.chars.last.to_i

end 



p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
#fibonacci_last(123456789) # -> 4