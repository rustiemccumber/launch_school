# Write a program that can calculate the Hamming
#  distance between two DNA strands.

# A mutation is simply a mistake that occurs 
# during the creation or copying of a nucleic acid, 
# in particular DNA. Because nucleic acids are vital 
# to cellular functions, mutations tend to cause a 
# ripple effect throughout the cell. Although mutations 
# are technically mistakes, a very rare mutation may 
# equip the cell with a beneficial attribute. In fact,
#  the macro effects of evolution are attributable by 
#  the accumulated result of beneficial microscopic 
#  mutations over many generations.

# The simplest and most common type of nucleic acid 
# mutation is a point mutation, which replaces one base 
# with another at a single nucleotide.

# By counting the number of differences between 
# two homologous DNA strands taken from different
#  genomes with a common ancestor, we get a measure 
#  of the minimum number of point mutations that could 
#  have occurred on the evolutionary path between the two strands.

# This is called the 'Hamming distance'

# GAGCCTACTAACGGGAT
# CATCGTAATGACGGCCT
# ^ ^ ^  ^ ^    ^^
# The Hamming distance between these two DNA strands is 7.

# The Hamming distance is only defined for sequences of
#  equal length. If you have two sequences of unequal 
#  length, you should compute the Hamming distance over 
#  the shorter length.

class DNA
  
  attr_accessor :test_string
  attr_reader :original_string

  def initialize(original_string)
    @original_string = original_string
    @test_string = nil
  end

  def hamming_distance(string_to_test)
    self.test_string = string_to_test
    count_differences
  end

  def count_differences
     shorter = find_shorter.chars
     longer = find_longer.chars 
     shorter.zip(longer).count {|short_char, long_char| short_char != long_char}
  end

  def find_shorter
    return test_string if test_string.length < original_string.length
    original_string
  end

  def find_longer 
    return original_string if original_string.length > test_string.length
    test_string 
  end

end


dna_obj = DNA.new('abc')
puts dna_obj.hamming_distance('abcd')



