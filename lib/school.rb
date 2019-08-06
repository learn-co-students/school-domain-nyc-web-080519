# code here!class School
class School    
    attr_accessor :name, :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        @student_name = student_name
        @grade = grade
        if @roster.keys.include?(@grade) == false 
          @roster[@grade] = []
        end
        @roster[@grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each_key do |key|
          @roster[key].sort!
        end
    end
end
