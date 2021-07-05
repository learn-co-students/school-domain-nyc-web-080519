require 'pry'
class School
  
  attr_accessor :name, :roster

  def initialize(name)
      @name = name
      @roster = {}
    end
  
  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end 

  def grade(grade_of_students) 
    roster[grade_of_students]
  end 
  
  def sort
    sorter = {}
   ham = roster.sort
     ham.each do |x, y|
       sorter[x] = y.sort
       #binding.pry
     end
    sorter
  end

end #class end