# Write a program that, given a word and a list of possible anagrams,
#  selects the correct sublist that contains the anagrams of the word.

# For example, given the word "listen" and a list of candidates like 
# "enlists" "google" "inlets" "banana" the program should return a list 
# containing "inlets". Please read the test suite for exact rules of anagrams.

# class Anagram 

#   def initialize(word)
#     @original_word = word
#     @letters = letters(@original_word)
#   end

#   def match(array)
#      array.select { |current_word| anagram?(current_word)}
#   end

#   def anagram? (word_to_check)
#     letters(word_to_check) == @letters && word_to_check != @original_word
#   end

#   def letters(word)
#     word.chars.sort 
#   end

# end

class Anagram
  def initialize word
    @original_word = word
    @letters = letters @original_word
  end

  def match possibilities
    possibilities.select { |word| anagram? word }
  end

  private

  def anagram? word
    @letters == letters(word) && @original_word != word.downcase
  end

  def letters word
    word.downcase.chars.sort
  end
end