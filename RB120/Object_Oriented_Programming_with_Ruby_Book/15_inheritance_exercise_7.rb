class Student
  attr_accessor :name
  attr_writer :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(student)
    grade > student.grade
  end

  protected

  attr_reader :grade
end

joe = Student.new("Joe", 95)
bob = Student.new("Bob", 91)
puts "Well done!" if joe.better_grade_than?(bob)

