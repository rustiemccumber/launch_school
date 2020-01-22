# Write a method that takes an Array as an argument, 
# and reverses its elements in place; that is, mutate 
# the Array passed into this method. The return value
#  should be the same Array object.

# You may not use Array#reverse or Array#reverse!.


=begin

initialize and index 

loop do 

  - break if index >= ((array.size/2) - 1)

  - simultaneously ressasign the first character to equal the last character

end 

=end 

# Examples:

# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id

# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"]
# list == ["c", "d", "e", "b", "a"]

# list = ['abc']
# reverse!(list) == ["abc"]
# list == ["abc"]

# list = []
# reverse!(list) == []
# list == []


def reverse!(input_array)
  
  idx = 0
  idx_end = - 1

  loop do
    break if idx >= ((input_array.size/2))
    input_array[idx], input_array[idx_end] = input_array[idx_end], input_array[idx]
    idx += 1
    idx_end -= 1
  end 
  input_array 
end


p list = [1,2,3,4]
p result = reverse!(list)
p result #== [4, 3, 2, 1]
p list #== [4, 3, 2, 1]
p list.object_id == result.object_id

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

p list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

p list = []
p reverse!(list) # == []
p list # == []


