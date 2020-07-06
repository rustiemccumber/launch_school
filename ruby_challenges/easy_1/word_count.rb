# Write a program that given a phrase can 
# count the occurrences of each word in that phrase.

# For example, if we count the words for the input 
# "olly olly in come free", we should get:

# olly: 2
# in: 1
# come: 1
# free: 1

class Phrase
  
  attr_accessor :word_hash
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
    @word_hash = nil
  end

  def word_count
    self.word_hash = Hash.new(0)
    word_array = phrase.split(/[^a-z0-9']/i)
    word_array.delete(/\s+/)
    word_array.each do |word|
      word.downcase!
      word_hash[word] += 1
    end
    word_hash
  end
end 
