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
    return "Student Code: " + self.student_code + " / Student Name: " + self.student_name + " / Email ID: " + self.email_id + " / Name of Parent: " + self.parent_name + " / Mobile Number: " + self.mobile_number

  end
  # t.string "student_code"
  # t.string "student_name"
  # t.string "date_of_birth"
  # t.string "email_id"
  # t.string "home_address"
  # t.string "parent_name"
  # t.string "mobile_number"
  # t.string "gender"
  # t.string "sibling"
  # t.string "enrolled_date"
  # t.integer "teacher_id"
  # t.integer "grade_id"
  # t.integer "tuitionFee_id"
    
end

  