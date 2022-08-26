# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 8) do

  create_table "fee_payments", force: :cascade do |t|
    t.string "fee_payment_code"
    t.integer "student_id"
    t.integer "grade_id"
    t.string "date_of_payment"
    t.float "amount_of_payment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "forecasts", force: :cascade do |t|
    t.string "precipitation"
    t.string "uv_radiation"
    t.string "solar_radiation"
    t.string "temperature"
    t.string "wind_direction"
    t.string "wind_speed"
    t.string "clouds"
    t.string "snow"
    t.string "visibility"
    t.string "station_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "grades", force: :cascade do |t|
    t.string "grade_code"
    t.string "grade_name"
    t.string "grade_gender"
    t.integer "teacher_id"
  end

  create_table "salaries", force: :cascade do |t|
    t.string "salary_code"
    t.float "fortnightly_salary"
  end

  create_table "salary_payments", force: :cascade do |t|
    t.string "salary_payment_code"
    t.integer "teacher_id"
    t.string "date_of_payment"
    t.float "amount_of_payment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "student_code"
    t.string "student_name"
    t.string "date_of_birth"
    t.string "email_id"
    t.string "home_address"
    t.string "parent_name"
    t.string "mobile_number"
    t.string "gender"
    t.string "sibling"
    t.string "enrolled_date"
    t.integer "teacher_id"
    t.integer "grade_id"
    t.integer "tuitionFee_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "teacher_code"
    t.string "teacher_name"
    t.string "email_id"
    t.string "home_address"
    t.string "mobile_number"
    t.string "gender"
    t.string "engagement_date"
    t.string "bank_details"
    t.integer "salary_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tuition_fees", force: :cascade do |t|
    t.string "fee_code"
    t.float "term_1_fee"
    t.float "term_2_fee"
    t.float "term_3_fee"
    t.float "term_4_fee"
    t.float "full_year_fee"
  end

end
