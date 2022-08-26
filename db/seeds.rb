# Teacher.delete_all
# Student.delete_all
# Grade.delete_all

Student.create(
        student_code: 2022001,
        student_name: "Student 1",
        date_of_birth: "01-01-2010",
        email_id: "student1@yahoo.com",
        home_address: "Student 1 Home Address",
        parent_name: "Student 1 Parent",
        mobile_number: "Student 1 Mobile",
        gender: "Male",
        sibling: "Yes",
        enrolled_date: "01-01-2022",
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
        email_id: "teachermale1@yahoo.com",
        home_address: "Teacher Male 1 Home",
        mobile_number: "61 478 123 456",
        gender: "Male",
        engagement_date: "01-01-2000",
        bank_details: "BSB - ACC",
        salary_id: 1 
)

TuitionFee.create(
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

FeePayment.create(
        fee_payment_code: "FeePayment1",
        student_id: 1,
        grade_id: 1,
        date_of_payment: "01-01-2022",
        amount_of_payment: 240
)

SalaryPayment.create(
        salary_payment_code: "SalaryPayCode1",
        teacher_id: 1,
        date_of_payment: "01-01-2022",
        amount_of_payment: 1750
)

Forecast.create(
        precipitation: "10",
        uv_radiation: "10",
        solar_radiation: "20",
        temperature: "10",
        wind_direction: "SSE",
        wind_speed: "10",
        clouds: "10",
        snow: "10",
        visibility: "clear",
        station_code: "2022",
)
