
def remove_evens!(arr)
  cloned_arr = arr.dup
  cloned_arr.each do |num|
    if num % 2 == 0
      arr.delete(num)
    end
  end
  arr
end


array = [1,1,2,3,4,6,8,9]
p remove_evens!(array)
p array 