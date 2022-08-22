class Feepayment < ActiveRecord::Base
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
      # return an array of strings containing every student's data
      self.feePayments.each do |fee|
        fee.fee_payment_code
        fee.student_id
        fee.grade_id
        fee.date_of_payment
        fee.amount_of_payment
      end
    end

end
