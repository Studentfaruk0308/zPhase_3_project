# Teacher.delete_all
# Student.delete_all
# Grade.delete_all

Student.create(
        student_code: 2022001,
        student_name: "Student 4",
        date_of_birth: Date.new(2011,1,1),
        email_id: "student4@yahoo.com",
        home_address: "Student 4 Home Address",
        parent_name: "Student 4 Parent",
        mobile_number: "Student 4 Mobile",
        gender: "Male",
        sibling: true,
        enrolled_date: Date.new(2022,2,1),
        teacher_id: 1,
        grade_id: 1,
        tuitionFee_id: 1
)

Grade.create(
        grade_code: "G1B",
        grade_name: "Grade 1 Boy",
        grade_gender: "Male", 
        teacher_id: 1
)

Teacher.create(
        teacher_code: "TM1",
        teacher_name: "Teacher Male 1",
        email_id: "teachermale4@yahoo.com",
        home_address: "Teacher Male 1 Home",
        mobile_number: "61 478 123 456",
        gender: "Male",
        engagement_date: Date.new(2022,2,4),
        bank_details: "BSB - ACC",
        salary_id: 1 
)

Tuitionfee.create(
        fee_code: "BoyFee1",
        term_1_fee: 240,
        term_2_fee: 240,
        term_3_fee: 240,
        term_4_fee: 240,
        full_year_fee: 744
)

Salary.create(
        salary_code: "SalaryCode1",
        fortnightly_salary: 1750
)

Feepayment.create(
        fee_payment_code: "FeePayment1",
        student_id: 1,
        grade_id: 1,
        date_of_payment: Date.new(2022,2,4),
        amount_of_payment: 224
)

Salarypayment.create(
        salary_payment_code: "SalaryPayCode1",
        teacher_id: 1,
        date_of_payment: Date.new(2022,2,4),
        amount_of_payment: 2454
)

Forecast.create(
        precipitation: "1",
        uv_radiation: "1",
        solar_radiation: "2",
        temperature: "10",
        wind_direction: "SSE",
        wind_speed: "10",
        clouds: "0",
        snow: "0",
        visibility: "clear",
        station_code: "2022",
        date_time_forecast: Date.new(2022,2,4)
)
