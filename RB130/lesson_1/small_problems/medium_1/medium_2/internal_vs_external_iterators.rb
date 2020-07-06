# create a new `Enumerator` object.  When creating a new `Enumerator` you 
# may define whtat values are iterated upon.  We'll want to creat an `Enumerator`
# that can iterate over an infinite list of factorials.  Once you make this
# new `Enumerator`, test it out by printing out the first 7 factorial values, 
# starting with zero factorial

# more specifically, pring the frist 7 factorials by using an "external Iterator".
# Once you have done so reset your Enumerator.  Finally, reprein th same 7 
# factorials using your Enumerator object as a "Internal Iterator"

factorial_object = Enumerator.new do |yielder|
  accumulator = 1
  number = 0
  loop do 
    accumulator = number.zero? ? 1: accumulator * number
    yielder << accumulator 
    number += 1
  end 
end

7.times { puts factorial.next}

facorial.rewind

factorial.each_with_index do |number, index|
  puts number
  break if index == 6
end