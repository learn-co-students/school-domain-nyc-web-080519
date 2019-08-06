require 'pry'

class School 
  attr_accessor :roster
  roster = {}


  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    if roster[grade]
    else
      roster[grade] = []
    end # ends

    if roster[grade].length == 0
      roster[grade] << name
    else
      roster[grade].push(name)
    end #Ends if statement
  end #ends add_student method

  def grade(grd)
    roster[grd]
  end #ends grade method

   def sort
    output = {}
    roster.keys.sort.each do  | grade |
      output[grade] = roster[grade].sort
    end
    output
   end  # ends sort method

end # ends School class

 school = School.new("bhs")
 school.add_student("Zach morris", 9)
 school.add_student("AC Slater", 9)
 school.add_student("Kelly Kapowski", 10)
 school.add_student("Screech", 11)

 binding.pry
