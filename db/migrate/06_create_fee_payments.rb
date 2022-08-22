# !!! Before you run rake db:migrate, remember to fill out the other migration files -- otherwise you'll get an error resulting from the blank migration files.

class CreateFeePayments < ActiveRecord::Migration[6.0]
    def change
      create_table :feePayments do |t|
        t.string :fee_payment_code
        t.integer :student_id
        t.integer :grade_id
        t.date :date_of_payment
        t.float :amount_of_payment
        t.timestamps
      end
    end
  end