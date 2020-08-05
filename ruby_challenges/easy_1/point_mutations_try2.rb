

#require 'pry'
class DNA

  def initialize(original_string)
    @original_string = original_string
  end

  def hamming_distance(check_string)
    #binding.pry
    array = find_smaller(check_string)
    strand_array = array[0].chars 
    distance_array = array[1].chars
    counter = 0
    strand_array.each_with_index { |char, idx| counter += 1 if char != distance_array[idx] } 
    counter
  end

  def find_smaller(check_string)
    array = [@original_string, check_string].sort_by(&:length)
  end 
end