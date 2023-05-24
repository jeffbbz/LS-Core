class Triangle
  def initialize(side1, side2, side3)
    sides = [side1, side2, side3]
    raise ArgumentError, "Not a triangle!" if invalid_triangle?(sides)

    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    return "equilateral" if equilateral?
    return "scalene" if scalene?
    "isosceles"
  end

  private

  attr_reader :side1, :side2, :side3

  def equilateral?
    side1 == side2 && side2 == side3
  end

  def isosceles?
    !equilateral? && !scalene?
  end

  def scalene?
    side1 != side2 && side1 != side3 && side2 != side3
  end

  def invalid_triangle?(sides)
    return true unless sides.all?(&:positive?)
    return true if !side_lenghts_valid?(sides)
  end

  def side_lenghts_valid?(sides)
    (sides[0] + sides[1] > sides[2]) &&
      (sides[0] + sides[2] > sides[1]) &&
      (sides[1] + sides[2] > sides[0])
  end
end
