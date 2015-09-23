require 'test_helper'

class TestingTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Testing::VERSION
  end

  def test_it_does_something_useful
    assert true
  end
end

describe Testing do
  it "has a student class" do
    Testing::Student.must_be_instance_of Class
  end

  describe Testing::Student do
    it "has a name" do
      student = Testing::Student.new(name: "brian", age: 3)
      student.name.must_equal("brian")
    end

    it "can set a name" do
      student = Testing::Student.new(name: "jeff", age: 3)
      student.name.must_equal("jeff")
    end

    it "can set an age" do
      student = Testing::Student.new(name: "doesn't matter", age: 27)
      student.age.must_equal(27)
    end

    describe "students" do
      Student = Testing::Student
      before do
        @students = [
          Student.new(name: 'jim', age: 22),
          Student.new(name: 'caroline', age: 21),
          Student.new(name: 'jasmine', age: 17)
        ]
      end

      Display = Testing::Display

      describe Display do
        before do
          @display = Display.new(@students)
        end
        it "has a list of all the students" do
          @display.students.must_equal(@students)
        end

        it "has shows the names of all the students" do
          @display.names.must_equal("Jim, Caroline, Jasmine")
        end
        
        it "has shows the ages of all the students" do
          @display.ages.must_equal("22, 21, 17")
        end
        
        it "has shows average age of the class" do
          @display.average_age.must_equal(20)
        end
        
        it "shows info for a specific student" do
          @display.student_info("jim").must_equal("Jim is 22 years old")
        end
      end
    end
  end
end

# bundler gem testing