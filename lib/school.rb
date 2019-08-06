class School
    attr_accessor :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(*students, grade)
        @roster[grade] ||= []
        students.each do |s|
            @roster[grade] << s
        end
    end 

    def grade(num)
        return @roster[num].flatten
    end 

    def sort
      s = {}
        roster.each do |grade, students|
            s[grade] = students.sort
        end
      s
    end
end