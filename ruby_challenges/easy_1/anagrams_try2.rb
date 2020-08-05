


class Anagram

  def initialize(anagram_word)
    @anagram_word = anagram_word
  end

  def match(array)
    array_copy = array.clone
    delete_same(array_copy)
    anagram_array = []
    array_copy.each do |check_word|
      anagram_array << check_word if valid_anagram?(check_word) 
    end
    anagram_array
  end

  def valid_anagram?(other_word)
    @anagram_word.downcase.chars.sort == other_word.downcase.chars.sort 
  end

  def delete_same(array)
    array.delete_if { |word| word.downcase == @anagram_word.downcase}
  end 
end 