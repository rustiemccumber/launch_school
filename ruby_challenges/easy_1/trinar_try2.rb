

class Trinary

  INVALID_TRINARY = /[^012]/

  def initialize(trinary_string)
    @trinary_string = trinary_string
  end

  def to_decimal
    invalid_trinary? ? 0 : calculate
    
  end

  def calculate
    sum = 0
    reverse_and_convert_to_int.each_with_index do |num, pow |
      sum += num * (3 ** pow)
    end
    sum

  end 

  def reverse_and_convert_to_int
    @trinary_string.chars.reverse.map(&:to_i)
  end
  
  def invalid_trinary?
    @trinary_string.match(INVALID_TRINARY)
  end

end