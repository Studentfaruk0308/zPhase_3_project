# !!! Before you run rake db:migrate, remember to fill out the other migration files -- otherwise you'll get an error resulting from the blank migration files.

class CreateSalaryPayments < ActiveRecord::Migration[6.0]
    def change
      create_table :salary_payments do |t|
        t.string :salary_payment_code
        t.integer :teacher_id
        t.string :date_of_payment
        t.float :amount_of_payment
        t.timestamps
      end
    end
  end