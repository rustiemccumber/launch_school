
=begin

write a fibonacci number to find the nth number in the fib series

problem domain:

algorithim:

initialize an array with two values, [1, 1]

+ n - 2 times sum the last two items of the the array 
+ return the last item of the array 


n - 2.times {array[-1] + array [-2]}
}

array[-1]
  
=end

def fibonacci(n)

  fib_array =[1, 1]
  (n - 2).times {fib_array << (fib_array[-2] + fib_array[-1])}
  fib_array

end 


p fibonacci(40) #== 6765
#p fibonacci(100) #== 354224848179261915075
#p fibonacci(100_001) # => 4202692702.....8285979669707537501



