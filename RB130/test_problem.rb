


def mutate_me( array, &block)
  if block_given?
    array.map! do |item|
     block.call(item)
    end
  else 
    array
  end
end 








arr = [1,2,3]
mutated_arr = mutate_me(arr) { |el| el + 5 } # [6,7,8]
puts arr.object_id == mutated_arr.object_id # true

p mutate_me(['a','b','c']) { |el| el.upcase } # ['A', 'B', 'C']

cats = mutate_me([[1,2], [2,3], [3,4], 'a', 'b', 'c']) do |el|
  el.is_a?(Array) ? el.reverse : el
end # [[2, 1], [3, 2], [4, 3], "a", "b", "c"]

p mutate_me([1, 2, 3, 4])