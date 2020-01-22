# given a number n, return the number of positive odd numbers below n,

=begin
- INPUT: integer
- OUTPUT: integers

-problem domain: positve numbers below n

- implicit requirements: none 

- clarifying questions:

- edge cases: 

Algorithm:

initialize and a variable `array` and set it to point to (1...n).to_a

call count { |num| numb.odd}

EXAMPLES

oddCount(7) //=> 3, i.e [1, 3, 5]
oddCount(15) //=> 7, i.e [1, 3, 5, 7, 9, 11, 13]

=end 

def oddCount(n)

  (1...n).to_a.count {|num| num.odd?}

end

p oddCount(7)
p oddCount(15)