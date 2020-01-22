=begin 

write a method which takes and english string and performs addition or subtraction

- INPUT: String
- OUTPUT: integer

Algorithm:

split up the sentence into an array

- initialize a variable first_num and assign the first character of the array to it 
  + convert the first and last character into integers
- repeat above step for the last integer 
- intialize a variable opperator and assign the middle digit to it 
  + convert middle character into and operator

for the FURTHER EXPLORATION (i.e. last example )

initialize a local variable `sum` and set it to point to 0 
first = word[0]
second = word[2]
opertor = word[1]
sum = first operator second 

sum = sum operator 


examples:

computer("two plus two")
computer("seven minus six")
computer("zero plus 8")
computer("three minus one plus five minus 4 plus six plus 10 minus 4")

=end



def computer(string)

  nums = {
    'zero' => 0,
    'one' => 1,
    'two' => 2,
    'three' => 3,
    'four' => 4,
    'five' => 5,
    'six' => 6,
    'seven' => 7,
    'eight' => 8,
    'nine' => 9,
    'ten' => 10
  }

  words = string.split(" ")
  first = nums[words.first]
  second = nums[words.last]

  operation = words[1]
  sum = 0 
  
  case operation
  when "plus" 
    sum =  first + second
  when "minus"
    sum = first - second
  end 

  operation_idx = 3
  next_num_idx = 4

  loop do 
    break if next_num_idx == words.size
    operation =words[operation_idx]
    next_number = words[next_num_idx]

    case operation
    when 'plus' 
      sum = sum + next_number
    when 'minus'
      sum = sum - next_number
    end 

    operation_idx += 1
    next_number_idx += 1
  end 
  sum
end


p computer("two plus two")
p computer("seven minus six")
p computer("zero plus eight")
p computer("three minus one plus five minus four plus six plus ten minus four")
