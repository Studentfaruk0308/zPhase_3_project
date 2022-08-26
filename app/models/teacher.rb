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
      return "Teacher Code: " + self.teacher_code + " / Teacher Name: " + self.teacher_name + " / Email ID: " + self.email_id + " /Home Address: " + self.home_address + "/ Mobile Number: " + self.mobile_number + " / Engagement Date: " + self.engagement_date.to_s + " / Bank Details: " + self.bank_details + " / Salary ID: " + self.salary_id.to_s
    
    end

end