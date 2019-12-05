=begin 

Write a method that determines the mean (average) of the three scores passed to it, 
and returns the letter value associated with that grade.

Numerical Score Letter  Grade
90 <= score <= 100  'A'
80 <= score < 90  'B'
70 <= score < 80  'C'
60 <= score < 70  'D'
0 <= score < 60 'F'

Tested values are all between 0 and 100. There is no need to check for negative values
or values greater than 100.

input: 3 integers (0 - 100)
intermediate output: average of 3 scores
output: grade 

algorithim:
create a hash
- keys are the range of score
- values are the letter grade

  -steps
   -average grades
   -interate through hash keys
   -if key.include?(average)
      return value


get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

=end



def get_grade(score_1, score_2, score_3)

  hsh = {
  (90..100).to_a => 'A',
  (80..89).to_a => 'B',
  (70..79).to_a => 'C',
  (60..69).to_a => 'D',
  (0..59).to_a => 'F'
  }

  score_average = (score_1 + score_2 + score_3)/3
  letter_grade = ''
  hsh.each do |key, value|
    if key.include?(score_average)
      letter_grade += value
    end
  end 
  letter_grade
end 

p get_grade(95, 90, 93) 
p get_grade(50, 50, 95) 

