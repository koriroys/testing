require "testing/version"



module Testing
  # Fork this gist, then fill in the code with your answers.

  # you teach an advanced mathematics class at the local university.
  # Your class is very difficult, so all but three students have quit.
  # The three students who remain are:
  # jim, 22 years old
  # caroline, age 21 years old
  # jasmine, the 17 year old young genius

  # to keep track of your students, you create a Student class:

  class Student
#     attr_accessor :name, :age

    def initialize(name:, age:)
       @name = name
       @age = age
    end

    attr_reader :name
    attr_reader :age

  end
  
  class Display
    attr_reader :students
    
    def initialize(students)
      @students = students
    end

    def names
      names = []
      @students.each do |student|
        names << student.name.capitalize
      end
      names.join(", ")
    end

#     def average_age
#       # fill in this method with the code to print out the average age of the class
#       # hint: try to use a different method than 'each' from the Enumerable class
#       # hint: (or maybe a combination of methods)
#     end

#     def student_info(student_name)
#       # hint: you'll need to find the right student in the list of students,
#       # then fetch that student's age as well.
#       # EXPECTED OUTPUT, given a student_name of "jim":
#       # Jim is 22 years old
#     end
  end
end

#     def name
#       @name
#     end
# student.name

    # attr_writer :name
#     def name=(value)
#       @name = value
#     end
# student.name=("jeff")

# attr_accessor :name
#     def name
#       @name
#     end

#     def name=(value)
#       @name = value
#     end