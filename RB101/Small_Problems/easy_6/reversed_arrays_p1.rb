=begin 
Write a method that takes an Array as an argument, and reverses its elements in place; that is, 
mutate the Array passed into this method. The return value should be the same Array object.

algorithm

each element in list
  loop through array starting at array -1..1
  assign array[-1] array  [1]


examples 
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []
=end 
def reverse!(array)
  array.sort! {|x,y| -(x <=> y)}
end 

=begin
def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end
  array
end
=end 

p list = [1,2,3,4,5]
p result = reverse!(list)
p result
p list
p list.object_id == result.object_id

=begin
def reverse_array(list)
  reversed_array = [] 
  increment = -1
  for number in list 
    list[increment]
    reversed_array << list[increment]
    increment -= 1
  end
  reversed_array.each do |char|
    list << char
    list.shift
  end 
  list
end 

list = [1, 2, 3, 4]
result = reverse_array(list)
p result
p list
p result.object_id
p list.object_id

=end