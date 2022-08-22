# !!! Before you run rake db:migrate, remember to fill out the other migration files -- otherwise you'll get an error resulting from the blank migration files.

class CreateTuitionFees < ActiveRecord::Migration[6.0]
    def change
      create_table :tuitionFees do |t|
        t.string :fee_code
        t.float :term_1_fee
        t.float :term_2_fee
        t.float :term_3_fee
        t.float :term_4_fee
        t.float :full_year_fee
      end
    end
  end