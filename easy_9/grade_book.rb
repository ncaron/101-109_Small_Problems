# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter
# value associated with that grade.

# Numerical Score Letter  Grade
# 90 <= score <= 100  'A'
# 80 <= score < 90  'B'
# 70 <= score < 80  'C'
# 60 <= score < 70  'D'
# 0 <= score < 60 'F'
# Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

# Example:

# ```
# get_grade(95, 90, 93) == "A"
# get_grade(50, 50, 95) == "D"
# ```

INF = Float::INFINITY

def get_grade(grade1, grade2, grade3)
  average = (grade1 + grade2 + grade3) / 3

  case average
  when 101..INF   then 'A+'
  when 90..100    then 'A'
  when 80..89     then 'B'
  when 70..79     then 'C'
  when 60..69     then 'D'
  else                 'F'
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
puts get_grade(100, 100, 110) == "A+"