#In this assignment, let's implemnt a `reduce` method, similar to `Enumerable#reduce`

# example
#[1, 2, 3].reduce do |acc, num|
#  acc + num
#end 

# => 6

def reduce(arr, accum = 0)
  counter = 0
  accumulator = accum 
  while counter < arr.size
    current = arr[counter]
    accumulator = yield(accumulator, current)
    counter += 1
  end

  accumulator
  
end 




array = [1, 2, 3, 4, 5]

puts reduce(array) { |acc, num| acc + num }                    # => 15
puts reduce(array, 10) { |acc, num| acc + num }                # => 25
#puts reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass