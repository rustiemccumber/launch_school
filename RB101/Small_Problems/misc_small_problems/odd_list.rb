=begin
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
=end

array = [1, 2, 3, 4, 5]

array.delete_if { |i| array.find_index(i).odd?}

p array 