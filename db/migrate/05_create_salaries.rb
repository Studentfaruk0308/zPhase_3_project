# !!! Before you run rake db:migrate, remember to fill out the other migration files -- otherwise you'll get an error resulting from the blank migration files.

class CreateSalaries < ActiveRecord::Migration[6.0]
    def change
      create_table :salaries do |t|
        t.string :salary_code
        t.float :fortnightly_salary
      end
    end
  end