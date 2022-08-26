class SalaryPayment < ActiveRecord::Base
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
      return "Salary Payment Code: " + self.salary_payment_code + " / Teacher ID: " + self.teacher_id + " / Date of Payment: " + self.date_of_payment + " / Amount Paid: " + self.amount_of_payment
    end

    # t.string "salary_payment_code"
    # t.integer "teacher_id"
    # t.string "date_of_payment"
    # t.float "amount_of_payment"
end
