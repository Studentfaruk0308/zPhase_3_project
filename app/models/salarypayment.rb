class Salarypayment < ActiveRecord::Base
    belongs_to :teacher

    # attr_reader :id

    # attr_accessor :salary_payment_code, :teacher_id, :date_of_payment, :amount_of_payment

    # def initialize(salary_payment_code, teacher_id, date_of_payment, amount_of_payment)
      
    #   @salary_payment_code = salary_payment_code
    #   @teacher_id = teacher_id
    #   @date_of_payment = date_of_payment
    #   @amount_of_payment = amount_of_payment
    # end

    def list_all_salaryPayments
      # return an array of strings containing every student's data
      self.salaryPayments.each do |salary|
        salary.salary_payment_code
        salary.teacher_id
        salary.date_of_payment
        salary.amount_of_payment
      end
    end
end
