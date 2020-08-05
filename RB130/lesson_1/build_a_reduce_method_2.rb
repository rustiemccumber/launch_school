


def reduce(arr, accum = 0)
  counter = 0

  while counter < arr.size  do 
    current_item = arr[counter]
    accum = yield(accum, current_item)
    counter += 1
  end

  accum
end 





array = [1, 2, 3, 4, 5]

puts reduce(array) { |acc, num| acc + num }                    # => 15
puts reduce(array, 10) { |acc, num| acc + num }                # => 25
#reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass