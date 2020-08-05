


def select(arr)

  counter = 0
  new_array = []

  while counter < array.size do
    current_item = array[counter]
    new_array << current_item if yield(current_item)
  end

  new_array

end



array = [1, 2, 3, 4, 5]

select(array) { |num| num.odd? }      # => [1, 3, 5]
select(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
select(array) { |num| num + 1 }       # => [1, 2, 3, 4, 5], because "num + 1" evaluates to true