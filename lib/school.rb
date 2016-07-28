
require 'pry'
class School

  attr_accessor :name, :roster, :sorted_hash

  def initialize(name=nil)
    @name = name
    @roster = {}
    @sorted_hash = {}
  end

  def add_student(student, grade)
    @student = student
    @grade = grade
    if !@roster[grade]
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    new_hash = {}
    roster.each do |grade, students|
      new_hash[grade] = []
      new_hash[grade] = students.sort
    end
    new_hash
  end
end

Oxford = School.new("Oxford High School")

Oxford.add_student("zed Slater", 9)
Oxford.add_student("BB token", 9)
Oxford.add_student("sally field", 3)


# puts Oxford #object id
# puts Oxford.roster

Oxford.sort
