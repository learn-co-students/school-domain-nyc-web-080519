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
    
=begin
    def grade(grade)
      roster.select do |key, value| 
        kids = value.flatten
        if key == grade
        return kids
        end
      end
=end

    def grade(student_grade)
      roster[student_grade]
    end 
    
    def sort
      sorter = {}
      
      roster.each { |k,v| sorter[k] = v.sort!}
      sorter
    #binding.pry
    end 
    
end #class end 


