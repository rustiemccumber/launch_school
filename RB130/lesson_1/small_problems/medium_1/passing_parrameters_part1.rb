# modify the mehtod below so that the display/ouput of `items` is 
# moved to a block, and its implmentation is left up to the
# user of the `gather` method

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "let's start garther food."
  yield(items)
  puts "nice sleciton of food we have gathered!"
end

gather(items) { |produce| put produce.join('; ')}