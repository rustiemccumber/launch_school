# array = [5, 3]
# bubble_sort!(array)
# array == [3, 5]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

=begin

- input: array 
- output: sorted array 
  
algorithim:

- iterate through the array using `loop` 
- within the loop 
  + compare each current number to the next number, swap positions if the current is greater than the next number
- create a counter that counts the number of swaps if the number of swaps is zero break out of the loop 


=end 
require 'pry'
require 'pry-byebug'

def bubble_sort!(array)
   counter = 0 
   swap_counter = 0 
  loop do 
     loop do   
       if (array[counter] <=> array[counter + 1]) == 1
         array[counter], array[counter + 1] = array[counter + 1], array[counter]
         swap_counter +=1
       end 
       counter += 1
       break if counter == array.size - 1
     end
     break if swap_counter == 0
     counter = 0
     swap_counter = 0 
  end 
  array 
end 

array = [5, 3]
bubble_sort!(array)
p array 

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)