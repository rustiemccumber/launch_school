



#perfect number: Sum of factors = Perfect number
#abundant: Sum of factors > number
#deficient: sum of factors < number

# if it's prime it's deficent 
# if it's negative it raises a StandardError

# find if the number is non-prime 

class PerfectNumber

  def self.classify(check_number)
    raises StandardError if invalid?(check_number)
    sum_of_factors = find_factors(check_number).inject(:+)
    case 
    when sum_of_factors < check_number then 'deficient'
    when sum_of_factors > check_number then 'abundant'
    when sum_of_factors == check_number then 'perfect'
    end    
  end

  def self.invalid?(check_number)
    check_number <= 0
  end

  def self.find_factors(check_number)
    factors_array = []
    1.upto(check_number/2) do |current_number| 
      factors_array << current_number if (check_number % current_number == 0)
    end 
    factors_array
  end

end