class Salary < ActiveRecord::Base
    has_many :teachers

    # attr_reader :id

    # attr_accessor :salary_code, :fortnightly_salary

    # def initialize(salary_code, fortnightly_salary)
      
    #   @salary_code = salary_code
    #   @fortnightly_salary = fortnightly_salary
    # end

    def list_all_salaries
      # return an array of strings containing every student's data
      self.salaries.each do |salary|
        salary.salary_code
        salary.fortnightly_salary
      end
    end

end