class School
    attr_reader :roster

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end

    def grade(the_grade)
        @roster[the_grade]
    end

    def sort
        new_hash = Hash.new
        @roster.each do |key, value|
            new_hash[key] = value.sort
        end
        new_hash
    end
end
