def multiply(numbers, multiply_by)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * multiply_by

    counter += 1
  end

  doubled_numbers
end


my_numbers = [1, 4, 3, 7, 2, 6]
puts multiply(my_numbers, 3)