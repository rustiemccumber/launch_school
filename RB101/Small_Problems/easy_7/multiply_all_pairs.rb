=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers, 
and returns a new Array that contains the product of every pair of numbers 
that can be formed between the elements of the two Arrays. The results should 
be sorted by increasing value.

-input: two array arguments
-output: oney arra with every combination of 
mulitplication between the two rays which is possible

algorithm 
initialize position = 0 
array_new = []
  until postion == array_1 size 
  choose first number of array_1[position]
  array_2.each {|num| array_new << num * array_1[position]}
  increment position +=1
end 

  



multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

=end
=begin 
def multiply_all_pairs(array_1, array_2)
  position = 0 
  array_new = []
  until position == array_1.size
    array_2.each {|num| array_new << num * array_1[position]}
    position += 1
  end
  array_new.sort
end 
=end

def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map {|x,y| x * y}.sort 
end
p multiply_all_pairs([2, 4], [4, 3, 1, 2])
