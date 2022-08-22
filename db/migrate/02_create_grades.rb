# !!! Before you run rake db:migrate, remember to fill out the other migration files -- otherwise you'll get an error resulting from the blank migration files.

class CreateGrades < ActiveRecord::Migration[6.0]
    def change
      create_table :grades do |t|
        t.string :grade_code
        t.string :grade_name
        t.string :grade_gender
        t.integer :teacher_id
      end
    end
  end