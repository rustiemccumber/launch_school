

# given this code:

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# fill out the folloiwng method calls for `gather` so that they
# produce the corresponding output in numbers 1 - 4 lised below:

# gather(items) do | *produce , wheat |
#   puts produce.join(', ')
#   puts wheat
# end


#Let's start gathering food.
#apples, corn, cabbage
#wheat
#we'ver finished fathering

# gather(items) do | fruit, *vegetables , wheat |
#   puts fruit 
#   puts vegetables.join(', ')
#   puts wheat
# end

#Let's start gathering food.
#apples
#corn, cabbage
#wheat
#we've finished gahtering 

# gather(items) do | fruit , *other_food|
#   puts fruit
#   puts other_food.join(', ')
# end

#let's start gathering food.
#apples
#cor, cabbage, wheat
#we've finished gathering!

gather(items) do | food1, food2 , food3 , food4 |
  puts "#{food1}, #{food2} , #{food3} , #{food4}"
end