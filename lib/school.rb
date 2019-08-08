require 'pry'

class School

    attr_accessor :name, :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade_level)
        
        if self.roster.has_key?(grade_level)
            return (self.roster[grade_level]).push(student_name)
        end
        self.roster[grade_level] = []
        (self.roster[grade_level]).push(student_name)

    end

    def grade(grade_level)
        return self.roster[grade_level]
    end

    def sort
        self.roster.each do |grade, students|
            self.roster[grade] = students.sort
        end 
    end


end