class School
    attr_accessor :roster, :school_name, :student_name 
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end #end of the intialize method

    def add_student(student_name, grade)
        if @roster[grade]
           @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end #end of add_student method

    def grade(grade)
        @roster.select {|grade ,name| grade = grade }
    end

    def sort
        @roster.sort_by {|grade, student_name| grade, student_name}
    end
    
end #end of the School class definition
