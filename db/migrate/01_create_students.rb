# !!! Before you run rake db:migrate, remember to fill out the other migration files -- otherwise you'll get an error resulting from the blank migration files.

class CreateStudents < ActiveRecord::Migration[6.0]
    def change
      create_table :students do |t|
        t.string :student_code
        t.string :student_name
        t.string :date_of_birth
        t.string :email_id
        t.string :home_address
        t.string :parent_name
        t.string :mobile_number
        t.string :gender
        t.string :sibling
        t.string :enrolled_date
        t.integer :teacher_id
        t.integer :grade_id
        t.integer :tuitionFee_id
        t.timestamps
      end
    end
  end