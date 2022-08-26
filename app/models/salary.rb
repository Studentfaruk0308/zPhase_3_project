class Salary < ActiveRecord::Base
    has_many :teachers

    # attr_reader :id

    # attr_accessor :salary_code, :fortnightly_salary

    # def initialize(salary_code, fortnightly_salary)
      
    #   @salary_code = salary_code
    #   @fortnightly_salary = fortnightly_salary
    # end

    def list_all_salaries
      return "Salary Code: " + self.salary_code + " / Forthnightly Salary: " + self.fortnightly_salary.to_s
    end
    # t.string "salary_code"
    # t.float "fortnightly_salary"

end