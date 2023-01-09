# Small Problems > Medium 2 > Tri-Angles

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  case
  when angles.sum != 180, angles.include?(0) then :invalid
  when angles.one?(90)                       then :right
  when angles.one? { |angle| angle > 90 }    then :obtuse
  when angles.all? { |angle| angle < 90 }    then :acute
  end
end

p triangle(60, 70, 50) #== :acute
p triangle(30, 90, 60) #== :right
p triangle(120, 50, 10) #== :obtuse
p triangle(0, 90, 90) #== :invalid
p triangle(50, 50, 50) #== :invalid