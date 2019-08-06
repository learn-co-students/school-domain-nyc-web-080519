require 'pry'

class School
  attr_accessor :name, :roster


  def initialize(name, roster={})
    @name = name
    @roster = roster
  end

  def add_student(name, grade)
    @roster[grade] = []  if !@roster[grade]
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    @roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end  

end # end of School class