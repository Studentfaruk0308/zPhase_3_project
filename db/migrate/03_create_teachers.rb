# !!! Before you run rake db:migrate, remember to fill out the other migration files -- otherwise you'll get an error resulting from the blank migration files.

class CreateTeachers < ActiveRecord::Migration[6.0]
    def change
      create_table :teachers do |t|
        t.string :teacher_code
        t.string :teacher_name
        t.string :email_id
        t.string :home_address
        t.string :mobile_number
        t.string :gender
        t.date :engagement_date
        t.string :bank_details
        t.integer :salary_id
        t.timestamps
      end
    end
  end