# Teacher.delete_all
# Student.delete_all
# Grade.delete_all

Student.create(
        student_code: 2022004,
        student_name: "Student 4",
        date_of_birth: 04-01-2011,
        email_id: "student4@yahoo.com",
        home_address: "Student 4 Home Address",
        parent_name: "Student 4 Parent",
        mobile_number: "Student 4 Mobile",
        gender: "Male",
        sibling: true,
        enrolled_date: 04-01-2022,
        teacher_id: 1,
        grade_id: 1,
        tuitionFee_id: 1
)

Grade.create(
        grade_code: "G4B",
        grade_name: "Grade 4 Boy",
        grade_gender: "Male", 
        teacher_id: 1
)

Teacher.create(
        teacher_code: "TM4",
        teacher_name: "Teacher Male 4",
        email_id: "teachermale4@yahoo.com",
        home_address: "Teacher Male 4 Home",
        mobile_number: "61 478 123 456",
        gender: "Male",
        engagement_date: 04-01-2022,
        bank_details: "BSB - ACC",
        salary_id: 1 
)

Tuitionfee.create(
        fee_code: "BoyFee3",
        term_1_fee: 240,
        term_2_fee: 240,
        term_3_fee: 240,
        term_4_fee: 240,
        full_year_fee: 744
)

Salary.create(
        salary_code: "SalaryCode4",
        fortnightly_salary: 1750
)

Feepayment.create(
        fee_payment_code: "FeePayment4",
        student_id: 1,
        grade_id: 1,
        date_of_payment: 04-01-2022,
        amount_of_payment: 224
)

Salarypayment.create(
        salary_payment_code: "SalaryPayCode4",
        teacher_id: 1,
        date_of_payment: 04-01-2022,
        amount_of_payment: 2454
)
