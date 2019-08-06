class School
  
  attr_accessor :roster, :name
  
  def initialize(name)
    @name = name
    @roster = { }
  end
  
  
  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    sorted = { }
    @roster.each do |grade, student_arr|
      sorted[grade] = @roster[grade].sort
    end
    
    sorted
  end
  
end