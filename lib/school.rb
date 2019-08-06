# code here!
require 'pry'

class School

  attr_accessor :roster, :grade 
  attr_reader :name

  def initialize(name) 
    @name = name 
    @roster = Hash.new 
  end 

  def add_student(name, grade)
  #if the Hash already has a matching key, push into the array 
  #else, create an empty array  
    if @roster[grade] ||= []
      @roster[grade] << name
    else 
      @roster[grade] << name
    end 
  end 

  #binding.pry 

  def grade(grade)
    p @roster[grade]
  end 

  def sort
    # new_roster = {}
    # @roster.each do |grade, student| #loops through each key and array of strings 
    # sorted_values = @roster.sort_by{|grade, student| student} #accesses array of strings and sorts 
    # new_roster << sorted_values #pushes new array of strings into a new roster 
    @roster.each do |grade, name|
      name.sort!
    end
  end 

#binding.pry 

end #end of School Class 