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
      # return an array of strings containing every student's data
      self.grades.each do |grade|
        grade.grade_code
        grade.grade_name
        grade.grade_gender
        grade.teacher_id
      end
    end

  end