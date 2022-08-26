class Grade < ActiveRecord::Base
    has_many :students
    belongs_to :teacher

    # attr_reader :id
    
    # attr_accessor :grade_code, :grade_name, :grade_gender, :teacher_id

    # def initialize(grade_code, grade_name, grade_gender, teacher_id)
      
    #   @grade_code = grade_code
    #   @grade_name = grade_name
    #   @grade_gender = grade_gender
    #   @teacher_id = teacher_id
    # end

    def list_all_grades
      return "Grade Code: " + self.grade_code + " / Grade Name: " + self.grade_name + " / Grade Gender: " + self.grade_gender + " / Grade Teacher ID: " + self.teacher_id.to_s
    end

    # t.string "grade_code"
    # t.string "grade_name"
    # t.string "grade_gender"
    # t.integer "teacher_id"

  end