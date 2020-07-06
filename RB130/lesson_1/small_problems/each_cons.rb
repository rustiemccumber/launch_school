
def each_cons(array)
  array.each_with_index do |value, idx|
    break if idx == (array.size - 1)
    yield(value, array[idx + 1])
  end
  nil
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
puts result == nil
puts hash #== { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
puts hash == {}
puts result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
puts hash #== {'a' => 'b'}
puts result == nil