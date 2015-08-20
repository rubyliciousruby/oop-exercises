# OOP Exercise 1: Class Time
class Person
  attr_accessor :name
  def initialize(name)
  	@name = name
  end

  def greeting
    "Hi my name is #{@name}"
  end
end

# Student class that is inherited from Person class with learn method.
class Student < Person
	def learn
		puts "I get it!"
	end

end
person_student = Student.new("Cristina")

person_student.greeting # => "Hello Cristina"
person_student.learn 


# Instructor class that is inherited from Person class with teach method.
class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object."
	end
end

person_instructor = Instructor.new("Chris")

person_instructor.greeting # => "Hello Cristina"
person_instructor.teach 
# Running the teach instance on Student and instructor instance.
person_student.teach
person_instructor.learn

# The above actions with assigned methods didn't work. This is because teach instance doesn't not attach to Student class, and learn instance doesn't not attach to the Instructor class.