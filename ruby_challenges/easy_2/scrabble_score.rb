# Write a program that, given a word, computes the scrabble score for that word.

# Letter Values
# You'll need these:

# Letter                           Value
# A, E, I, O, U, L, N, R, S, T       1
# D, G                               2
# B, C, M, P                         3
# F, H, V, W, Y                      4
# K                                  5
# J, X                               8
# Q, Z                               10
# Examples
# "cabbage" should be scored as worth 14 points:

# 3 points for C
# 1 point for A, twice
# 3 points for B, twice
# 2 points for G
# 1 point for E
# And to total:

# 3 + 2*1 + 2*3 + 2 + 1
# = 3 + 2 + 6 + 3
# = 5 + 9
# = 14

#empty strings, white spaces and nil all return 0

# split the word up into chars 
# have a counter that is set to 0
# make a regex which strips the string of white spaces 
# create a hash, with letters as the keys, and there associated values as the values
# iterate through the chars, look up each value, add each value to an accum
# return each the value

class Scrabble
  VALUES_TO_KEYS = {
    1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"], 
    2 => ["D", "G"],
    3 => ["B", "C", "M", "P"],
    4 => ["F", "H", "V", "W", "Y"],
    5 => ["K"],
    8 => ["J", "X"],
    10 => ["Q", "Z"] 
  }

  LETTERS_VALUES = VALUES_TO_KEYS.each_with_object({}) { |(v, arr), h| arr.each {|k| h[k] = v}}

  def initialize(string)
    @string = string
  end

  def self.score(string)
    self.new(string).score
  end

  def score
    return 0 if @string.nil?
    return 0 if to_a.empty?
    values_array = to_a.map { |letter| LETTERS_VALUES[letter]}
    values_array.inject(:+)
  end

  def to_a
    @string.gsub(/\s/, "").upcase.chars
  end

end
