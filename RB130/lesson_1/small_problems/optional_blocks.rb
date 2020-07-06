#write a method that takes and optional block.  IF the bloc is 
# specified, ethe method should execute it, and return the
# value returned by the block.  If no block is specified, the 
# should siply return the stirng `does not compute..`


def compute(arg = nil)
  return 'Does not compute.' unless block_given?
  yield(arg)
end 

puts compute { 5 + 3} == 8
puts compute { 'a' + 'b' } == 'ab'
puts compute == 'Does not compute.'

puts compute(3) { |n| 5 + n }
puts compute('hi') {|n| n + " i'm rustie"}
puts compute([1, 2, 3]) { |n| n << 4 }