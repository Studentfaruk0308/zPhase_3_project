class Tuitionfee < ActiveRecord::Base
    has_many :students
    has_many :grades


    # attr_reader :id

    # attr_accessor :fee_code, :term_1_fee, :term_2_fee, :term_3_fee, :term_4_fee, :full_year_fee

    # def initialize(fee_code, term_1_fee, term_2_fee, term_3_fee, term_4_fee, full_year_fee)
      
    #   @fee_code = fee_code
    #   @term_1_fee = term_1_fee
    #   @term_2_fee = term_2_fee
    #   @term_3_fee = term_3_fee
    #   @term_4_fee = term_4_fee
    #   @full_year_fee = full_year_fee
    # end

    def list_all_fees
      # return an array of strings containing every student's data
      self.fees.each do |fee|
        fee.fee_code
        fee.term_1_fee
        fee.term_2_fee
        fee.term_3_fee
        fee.term_4_fee
        fee.full_year_fee
      end

    end

end

