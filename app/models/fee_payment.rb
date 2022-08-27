class FeePayment < ActiveRecord::Base
    belongs_to :student
    belongs_to :grade

    # attr_reader :id

    # attr_accessor :fee_payment_code, :student_id, :grade_id, :date_of_payment, :amount_of_payment

    # def initialize(fee_payment_code, student_id, grade_id, date_of_payment, amount_of_payment)
      
    #   @fee_payment_code = fee_payment_code
    #   @student_id = student_id
    #   @grade_id = grade_id
    #   @date_of_payment = date_of_payment
    #   @amount_of_payment = amount_of_payment
    # end

    def list_all_feePayments
      return "Fee Payment Code: " + self.fee_payment_code + " / Student ID: " + self.student_id.to_s + " / Grade ID: " + self.grade_id.to_s + " / Date of Payment: " + self.date_of_payment + " / Amount of Payment: " + self.amount_of_payment.to_s
    end

end

    # t.string "fee_payment_code"
    # t.integer "student_id"
    # t.integer "grade_id"
    # t.string "date_of_payment"
    # t.float "amount_of_payment"