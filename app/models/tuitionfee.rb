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

    def list_all_tuition_fees
      return "Fee Code: " + self.fee_code + " / Term 1 Fee: " + self.term_1_fee.to_s + " / Term 2 Fee: " + self.term_2_fee.to_s + " / Term 3 Fee: " + self.term_3_fee.to_s + " / Term 4 Fee: " + self.term_4_fee.to_s + " / Full Year Fee: " + self.full_year_fee.to_s

    end

end

