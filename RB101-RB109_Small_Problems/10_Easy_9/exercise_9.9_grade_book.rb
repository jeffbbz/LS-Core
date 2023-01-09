# Small Problems > Easy 9 > Grade Book

# with a hash constant

GRADES = {
  "A": (90..100).to_a,
  "B": (80..89).to_a,
  "C": (70..79).to_a,
  "D": (60..69).to_a,
  "E": (0..59).to_a
}

def get_grade(score1, score2, score3)
  scores = [score1, score2, score3]
  mean = scores.sum / scores.size
  grade = GRADES.select { |_, scores| scores.include?(mean) }
  grade.keys.join
end

# LS solution with case statement

def get_grade(score1, score2, score3)
  scores = [score1, score2, score3]
  mean = scores.sum / scores.size
  
  case mean
  when 90..100 then "A"
  when 80..89  then "B"
  when 70..79  then "C"
  when 60..69  then "D"
  else              "F"
  end
end

p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"

# Further Exploration

def get_grade(score1, score2, score3)
  scores = [score1, score2, score3]
  mean = scores.sum / scores.size
  
  case mean
  when 101..   then "A+"
  when 90..100 then "A"
  when 80..89  then "B"
  when 70..79  then "C"
  when 60..69  then "D"
  else              "F"
  end
end

p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"
p get_grade(101, 103, 121) #== "A+"
p get_grade(40, 12, 54) #== "F"