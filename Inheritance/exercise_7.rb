class Student

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(different_student)
    grade > different_student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 95)
bob = Student.new("Bob", 94)
puts "Well done!" if joe.better_grade_than?(bob)
