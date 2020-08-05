def each(array)
  
  counter = 0
  while counter < (array.size - 1) do 
    yield(array[counter])
    counter += 1
  end
  array
end 