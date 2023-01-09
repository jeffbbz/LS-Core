# RB101 Lesson 3: Practice Problems - Medium 1.6

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# 34. The method mess_with_it has no effect because it's result is referenced by new_answer
# not answer, and answer is what the #inspect method is called on.