require 'pry'

class School
    
    attr_accessor :school_name, :roster

    def initialize(school_name)
        @name = school_name
        @roster = {}
    end 

    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name
    end 

    def grade(level)
        return roster[level] 
    end 

    def sort 
        sorted_hash = {}
        roster.each do |grade, student_name|
            sorted_hash[grade] = student_name.sort
        end 
        sorted_hash
    end 


end 


