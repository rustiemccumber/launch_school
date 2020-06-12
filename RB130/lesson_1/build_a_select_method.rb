
def select(arr)
  counter = 0
  new_array = []
  while counter < arr.size 
    current = arr[counter]
    result = yield(current)
    new_array << current if result
    counter += 1
  end

  new_array
end





array = [1, 2, 3, 4, 5]

print select(array) { |num| num.odd? }      # => [1, 3, 5]
print select(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
print select(array) { |num| num + 1 }       # => [1, 2, 3, 4, 5], because "num + 1" evaluates to true