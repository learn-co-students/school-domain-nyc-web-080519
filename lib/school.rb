# code here!
class School
    attr_reader :name
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << student
    end

    def grade(grade)
        @roster[grade]
    end
    
    def sort
        @roster.values.each {|names| names.sort!}
        @roster
    end
end