=begin

You might know some pretty large perfect squares. But what about the NEXT one?

Complete the findNextSquare method that finds the next integral perfect square after 
the one passed as a parameter. Recall that an integral perfect square is an integer n
such that sqrt(n) is also an integer.

If the parameter is itself not a perfect square, than -1 should be returned. 
You may assume the parameter is positive.

Examples:

findNextSquare(121) --> returns 144
findNextSquare(625) --> returns 676
findNextSquare(114) --> returns -1 since 114 is not a perfect

=end

=begin
- INPUT: integer 
- OUTPUT: output, the next perfect squareroot 
return -1 if the numbe is not a perfect square 

-problem domain: 

- implicit requirements:

- clarifying questions:

- edge cases

Algorithm:

initialize a variable square root and set it to point to 
Math.sqrt(num)
guard_clause



return -1 if math.sqrt(number) 

EXAMPLES

=end 


def findNextSquare(number)
  
  square_root = Math.sqrt(number)
  
  return -1 if square_root != square_root.to_i

  next_perfect_square = ((square_root + 1)**2).to_i

end 

p findNextSquare(121) # --> returns 144
p findNextSquare(625) #--> returns 676
p findNextSquare(114) #--> returns -1 since 114 is not a perfect