class Teacher < ActiveRecord::Base
    has_many :students
    has_many :grades
    belongs_to :salary
    has_many :salarypayment

    # attr_reader :id

    # attr_accessor :teacher_code, :teacher_name, :email_id, :home_address, :mobile_number, :gender, :engagement_date, :bank_details, :salary_id

    # def initialize(teacher_code, teacher_name, email_id, home_address, mobile_number, gender, engagement_date, bank_details, salary_id)
      
    #   @teacher_code = teacher_code
    #   @teacher_name = teacher_name
    #   @email_id = email_id
    #   @home_address = home_address
    #   @mobile_number = mobile_number
    #   @gender = gender
    #   @engagement_date = engagement_date
    #   @bank_details = bank_details
    #   @salary_id = salary_id
    # end

    def list_all_teachers
      # return an array of strings containing every student's data
      self.teachers.each do |teacher|
        teacher.teacher_code
        teacher.teacher_name
        teacher.email_id
        teacher.home_address
        teacher.mobile_number
        teacher.gender
        teacher.engagement_date
        teacher.bank_details
        teacher.salary_id
      end
    end

end