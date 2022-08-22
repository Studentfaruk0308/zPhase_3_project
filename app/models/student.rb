# require 'sqlite3'

# database_connection = SQLite3::Database.new('/home/faruk/Development/Code/Phase-3/zPhase_3_project_1/db/development.sqlite3')

class Student < ActiveRecord::Base
    belongs_to :teacher
    belongs_to :grade
    belongs_to :tuitionfee
    belongs_to :feepayment

    # attr_accessor :student_code, :student_name, :date_of_birth, :email_id, :home_address, :parent_name, :mobile_number, :gender, :sibling, :enrolled_date, :teacher_id, :grade_id, :tuitionfee_id

    # attr_reader :id

    # def initialize(student_code, student_name, date_of_birth, email_id, home_address, parent_name, mobile_number, gender, sibling, enrolled_date, teacher_id, grade_id, tuitionfee_id)
      
    #   @student_code = student_code
    #   @student_name = student_name
    #   @date_of_birth = date_of_birth
    #   @email_id = email_id
    #   @home_address = home_address
    #   @parent_name = parent_name
    #   @mobile_number = mobile_number
    #   @gender = gender
    #   @sibling = sibling
    #   @enrolled_date = enrolled_date
    #   @teacher_id = teacher_id
    #   @grade_id = grade_id
    #   @tuitionfee_id = tuitionfee_id
    # end



    def list_all_students
        # return an array of strings containing every student's data
        self.students.each do |student|
          student.student_code
          student.student_name
          student.date_of_birth
          student.email_id
          student.home_address
          student.parent_name
          student.mobile_number
          student.gender
          student.sibling
          student.enrolled_date
          student.teacher_id
          student.grade_id
          student.tuitionfee_id
        end
    end

  end

  