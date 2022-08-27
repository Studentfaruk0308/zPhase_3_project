class CLI 
    def initialize
        continue = 'Y'
        puts "Welcome to School Database"  
        while continue == 'Y'
     puts "Which Database do you like to work with?"
     puts "Type one of the following number from 1 to 7 to go respective database"
     puts "1. Student Data"
     puts "2. Teacher Data"
     puts "3. Grade Data"
     puts "4. Tuition Fee Data"
     puts "5. Teacher Salary Data"
     puts "6. Tuition Fee Payment Data"
     puts "7. Salary Payment Data"
     puts "8. Check Weather Forecast"

     input = gets.strip

     case input
     when '1'
         studentMenu
     when '2'
         teacherMenu
     when '3'
         gradeMenu
     when '4'
         tuitionFeeMenu
     when '5'
         salaryMenu
     when '6'
        feePaymentMenu
     when '7'
        salaryPaymentMenu
     when '8'
        weatherForecastMenu
     end

    puts "Do you want to continue (Y/N)?"
    continue = gets.strip
     end
    end

# STUDENT MENU

    def studentMenu
        puts "What would you like to do?"
        puts "Select one of the following options from 1 to 5"
        puts "1. Create a Student Data"
        puts "2. List All Students"
        puts "3. Update a Student Data"
        puts "4. Delete a Student Data"
        puts "5. Total Number of Students"

        input = gets.strip

        case input
        when '1'
            new_student_entry_menu
        when '2'
            Student.all.each do |student|
               puts student.list_all_students
            end
        when '3'
            update_student_menu
        when '4'
            delete_a_student_menu
        when '5'
            puts "There are total #{Student.count} students in the Database"   
        end

    end

    def new_student_entry_menu

        puts "Creating a new Student Data"
        puts ""
        puts "Please type the particulars of new student as asked in sequence"
        puts ""
        puts "Please type the code of new Student"
        new_student_code = gets.strip

        puts "Please type the Name of new Student"
        new_student_name = gets.strip

        puts "Please type the date of birth of new Student i.e. 01-01-2010"
        new_student_dob = gets.strip

        puts "Please type the email id of new Student"
        new_student_email = gets.strip

        puts "Please type the home address of new Student"
        new_student_homeaddress = gets.strip

        puts "Please type the parent name of new Student"
        new_student_parent = gets.strip

        puts "Please type the mobile number of new Student"
        new_student_mobile = gets.strip

        puts "Please type the gender of new Student"
        new_student_gender = gets.strip

        puts "Please type YES or NO if student has sibling in the school"
        new_student_sibling = gets.strip

        puts "Please type the date of enrolment ie 01-01-2022"
        new_student_enrolmentdate = gets.strip

        puts "Please type the assigned teacher id"
        new_student_teacherid = gets.strip

        puts "Please type the assigned grade id"
        new_student_gradeid = gets.strip
        
        puts "Please type the assigned tuition fee id"
        new_student_tuitionfeeid = gets.strip

        Student.create(
            student_code: new_student_code,
            student_name: new_student_name,
            date_of_birth: new_student_dob,
            email_id: new_student_email,
            home_address:new_student_homeaddress, 
            parent_name: new_student_parent, 
            mobile_number: new_student_mobile, 
            gender: new_student_gender, 
            sibling: new_student_sibling, 
            enrolled_date: new_student_enrolmentdate, 
            teacher_id: new_student_teacherid, 
            grade_id: new_student_gradeid, 
            tuitionFee_id: new_student_tuitionfeeid
        )

        puts "New Student created with the data you have provided"
        puts "Thank You"

    end
    
    def update_student_menu

        puts "Updating data of a Student in the Database"
        puts ""
        
        puts "Please type the Student id which to be updated"
        update_student_id = gets.strip

        update_student = Student.find_by(id: update_student_id)
        puts "Student with ID #{update_student_id} will be updated in next few steps"

        puts "Please type the new code of the Student"
        update_student_code = gets.strip

        puts "Please type the new name of the Student"
        update_student_name = gets.strip

        puts "Please type the new date of birth of the Student"
        update_student_dob = gets.strip

        puts "Please type the new email id of the Student"
        update_student_email = gets.strip

        puts "Please type the new home address of the Student"
        update_student_homeaddress = gets.strip

        puts "Please type the parent name of the Student"
        update_student_parent = gets.strip

        puts "Please type the new mobile number of the Student"
        update_student_mobile = gets.strip

        puts "Please type the gender of the Student"
        update_student_gender = gets.strip

        puts "Please type YES or NO if student has sibling in the school"
        update_student_sibling = gets.strip

        puts "Please type the new date of enrolment ie 01-01-2022"
        update_student_enrolmentdate = gets.strip

        puts "Please type the new assigned teacher id"
        update_student_teacherid = gets.strip

        puts "Please type the new assigned grade id"
        update_student_gradeid = gets.strip
        
        puts "Please type the new assigned tuition fee id"
        update_student_tuitionfeeid = gets.strip

        update_student.update(
            student_code: update_student_code,
            student_name: update_student_name,
            date_of_birth: update_student_dob,
            email_id: update_student_email,
            home_address:update_student_homeaddress, 
            parent_name: update_student_parent, 
            mobile_number: update_student_mobile, 
            gender: update_student_gender, 
            sibling: update_student_sibling, 
            enrolled_date: update_student_enrolmentdate, 
            teacher_id: update_student_teacherid, 
            grade_id: update_student_gradeid, 
            tuitionFee_id: update_student_tuitionfeeid
    )

        puts "Student with id #{update_student_id} updated in the Database"
    end

    def delete_a_student_menu
        puts "Deleting a Student from Database"
        puts ""
        
        puts "Please type the student id which to be deleted from Database"
        delete_student_id = gets.strip

        delete_Student = Student.find_by(id: delete_student_id)
        delete_Student.destroy

        puts "Student with id #{delete_student_id} deleted from the Database"

    end

# TEACHER MENU

    def teacherMenu
        puts "What would you like to do?"
        puts "Select one of the following options from 1 to 5"
        puts "1. Create a Teacher Data"
        puts "2. List All Teachers"
        puts "3. Update a Teacher Data"
        puts "4. Delete a Teacher Data"
        puts "5. Total Number of Teachers"

        input = gets.strip

        case input
        when '1'
            new_teacher_entry_menu
        when '2'
            Teacher.all.each do |teacher|
                puts teacher.list_all_teachers
            end
        when '3'
            update_a_teacher_menu
        when '4'
            delete_a_teacher_menu
        when '5'
            puts "There are total #{Teacher.count} Teachers in the Database"   
        end

    end

    def new_teacher_entry_menu

        puts "Creating a new Teacher in Database"
        puts ""
        puts "Please type the particulars of new Teacher as asked in sequence"
        puts ""
        puts "Please type the Code for new Teacher"
        new_teacher_code = gets.strip

        puts "Please type the Name of new Teacher"
        new_teacher_name = gets.strip

        puts "Please type the Email ID of new Teacher"
        new_teacher_email_id = gets.strip

        puts "Please type the home address of new 
        Teacher"
        new_teacher_home_address = gets.strip

        puts "Please type the mobile number of new Teacher"
        new_teacher_mobile_number = gets.strip

        puts "Please type the gender of new Teacher"
        new_teacher_gender = gets.strip

        puts "Please type the engagement date of new Teacher"
        new_teacher_engagement_date = gets.strip

        puts "Please type the bank details of new Teacher"
        new_teacher_bank_details = gets.strip

        puts "Please type the salary ID of new Teacher"
        new_teacher_salary_id = gets.strip

        Teacher.create(
            teacher_code: new_teacher_code,
            teacher_name: new_teacher_name,
            email_id: new_teacher_email_id,
            home_address: new_teacher_home_address,
            mobile_number: new_teacher_mobile_number,
            gender: new_teacher_gender,
            engagement_date: new_teacher_engagement_date,
            bank_details: new_teacher_bank_details,
            salary_id: new_teacher_salary_id
        )

        puts "A new Teacher created with the data you have provided"
        puts "Thank You"
    end

    def update_a_teacher_menu
        puts "Updating a Teacher in the Database"
        puts ""
        
        puts "Please type the Teacher id which to be updated"
        update_teacher_id = gets.strip

        update_teacher = Teacher.find_by(id: update_teacher_id)
        puts "Teacher #{update_teacher_id} will be updated in next few steps"

        puts "Please type the new Code of the Teacher"
        update_teacher_code = gets.strip

        puts "Please type the new Name of the Teacher"
        update_teacher_name = gets.strip

        puts "Please type the new Email ID of the Teacher"
        update_teacher_email_id = gets.strip

        puts "Please type the new home address of the
        Teacher"
        update_teacher_home_address = gets.strip

        puts "Please type the new mobile number of the Teacher"
        update_teacher_mobile_number = gets.strip

        puts "Please input the correct gender of the Teacher"
        update_teacher_gender = gets.strip

        puts "Please type the new engagement date of the Teacher"
        update_teacher_engagement_date = gets.strip

        puts "Please type the new bank details of the Teacher"
        update_teacher_bank_details = gets.strip

        puts "Please type the new salary ID of the Teacher"
        update_teacher_salary_id = gets.strip

        update_teacher.update(
            teacher_code: update_teacher_code,
            teacher_name: update_teacher_name,
            email_id: update_teacher_email_id,
            home_address: update_teacher_home_address,
            mobile_number: update_teacher_mobile_number,
            gender: update_teacher_gender,
            engagement_date: update_teacher_engagement_date,
            bank_details: update_teacher_bank_details,
            salary_id: update_teacher_salary_id
        )

        puts "Teacher with id #{update_teacher_id} updated in the Database"
    end

    def delete_a_teacher_menu
        puts "Deleting a Teacher from Database"
        puts ""
        
        puts "Please type the Teacher id which to be deleted from Database"
        delete_teacher_id = gets.strip

        delete_Teacher = Teacher.find_by(id: delete_teacher_id)
        delete_Teacher.destroy

        puts "Teacher with id #{delete_teacher_id} deleted from the Database"

    end

# GRADE MENU

    def gradeMenu

        puts "What would you like to do?"
        puts "Select one of the following options from 1 to 5"
        puts "1. Create a new Grade of Class"
        puts "2. List All Grades"
        puts "3. Update a Grade Data"
        puts "4. Delete a Grade from Database"
        puts "5. Total Number of Grades"

        input = gets.strip

        case input
        when '1'
            new_grade_entry_menu
        when '2'
            Grade.all.each do |grade|
                puts grade.list_all_grades
            end
        when '3'
            update_a_grade_menu
        when '4'
            delete_a_grade_menu
        when '5'
            puts "There are total #{Grade.count} Grades in the Database"   
        end            
    end

    def new_grade_entry_menu

        puts "Creating a new Grade in Database"
        puts ""
        puts "Please type the particulars of new Grade as asked in sequence"
        puts ""
        puts "Please type the Code for new Grade"
        new_grade_code = gets.strip

        puts "Please type the Name of new Grade"
        new_grade_name = gets.strip

        puts "Please type the Gender of new Grade"
        new_grade_gender = gets.strip

        puts "Please type assigned Teacher ID of new Grade"
        new_grade_teacher_id = gets.strip

        Grade.create(
            grade_code: new_grade_code,
            grade_name: new_grade_name,
            grade_gender: new_grade_gender,
            teacher_id: new_grade_teacher_id,
        )

        puts "A new Grade created with the data you have provided"
        puts "Thank You"
    end

    def update_a_grade_menu
        puts "Updating a Grade in the Database"
        puts ""
        
        puts "Please type the Grade id which to be updated"
        update_grade_id = gets.strip

        update_grade = Grade.find_by(id: update_grade_id)
        puts "Grade #{update_grade_id} will be updated in next few steps"

        puts "Please type the new code of the Grade"
        update_grade_code = gets.strip

        puts "Please type the new name of the Grade"
        update_grade_name = gets.strip

        puts "Please type the new gender of the Grade"
        update_grade_gender = gets.strip

        puts "Please type the new teacher id of the Grade"
        update_grade_teacher_id = gets.strip

        update_grade.update(
        grade_code: update_grade_code,
        grade_name: update_grade_name,
        grade_gender: update_grade_gender,
        teacher_id: update_grade_teacher_id,
    )

        puts "Grade with id #{update_grade_id} updated in the Database"
    end


    def delete_a_grade_menu
        puts "Deleting a Grade from Database"
        puts ""
        
        puts "Please type the Grade id which to be deleted from Database"
        delete_grade_id = gets.strip

        delete_Grade = Grade.find_by(id: delete_grade_id)
        delete_Grade.destroy

        puts "Grade with id #{delete_grade_id} deleted from the Database"

    end

# TUITION FEE MENU
    
    def tuitionFeeMenu

        puts "What would you like to do?"
        puts "Select one of the following options from 1 to 4"
        puts "1. Create a new Tuition Fee"
        puts "2. List All Tuition Fees"
        puts "3. Update a Tuitoin Fee Data"
        puts "4. Delete a Tuitoin Fee from Database"

        input = gets.strip

        case input
        when '1'
            new_tuition_fee_entry_menu
        when '2'
            TuitionFee.all.each do |fee|
                puts fee.list_all_tuition_fees
            end
        when '3'
            update_a_tuition_fee_menu
        when '4'
            delete_a_tuition_fee_menu
        end            
    end

    def new_tuition_fee_entry_menu

        puts "Creating a new Tuition Fee in Database"
        puts ""
        puts "Please type the details of new Tuition Fee as asked in sequence"
        puts ""
        puts "Please type the Code for new Tuition Fee"
        new_fee_code = gets.strip

        puts "Please type the Term 1 Fee"
        new_term_1_fee = gets.strip

        puts "Please type the Term 2 Fee"
        new_term_2_fee = gets.strip

        puts "Please type the Term 3 Fee"
        new_term_3_fee = gets.strip

        puts "Please type the Term 4 Fee"
        new_term_4_fee = gets.strip

        puts "Please type the Full Year Fee"
        new_full_year_fee = gets.strip

        TuitionFee.create(
            fee_code: new_fee_code,
            term_1_fee: new_term_1_fee,
            term_2_fee: new_term_2_fee,
            term_3_fee: new_term_3_fee,
            term_4_fee: new_term_4_fee,
            full_year_fee: new_full_year_fee
        )

        puts "A new Tuition Fee created with the data you have provided"
        puts "Thank You"
    end

    def update_a_tuition_fee_menu
        puts "Updating a Tuition Fee in the Database"
        puts ""
        puts "Please type the details of Tuition that to be updated as asked in sequence"
        puts ""
        puts "Please type the Tuition Fee ID that to be updated"
        update_tuition_fee_id = gets.strip

        update_tuition_fee = TuitionFee.find_by(id: update_tuition_fee_id)
        puts "Tuition Fee with ID #{update_tuition_fee_id} will be updated in next few steps"
       
        puts "Please type the Code for the Tuition Fee that to be updated"
        update_tuition_fee_code = gets.strip

        puts "Please type the Term 1 Fee"
        update_term_1_fee = gets.strip

        puts "Please type the Term 2 Fee"
        update_term_2_fee = gets.strip

        puts "Please type the Term 3 Fee"
        update_term_3_fee = gets.strip

        puts "Please type the Term 4 Fee"
        update_term_4_fee = gets.strip

        puts "Please type the Full Year Fee"
        update_full_year_fee = gets.strip

        update_tuition_fee.update(
            fee_code: update_tuition_fee_code,
            term_1_fee: update_term_1_fee,
            term_2_fee: update_term_2_fee,
            term_3_fee: update_term_3_fee,
            term_4_fee: update_term_4_fee,
            full_year_fee: update_full_year_fee
        )

        puts "Tuition Fee with ID #{update_tuition_fee_id} updated in the Database"
        puts "Thank You"
    end


    def delete_a_tuition_fee_menu
        puts "Deleting a tuition fee from Database"
        puts ""
        
        puts "Please type the tuition fee id which to be deleted from Database"
        delete_tuitionFee_id = gets.strip

        delete_Tuitionfee = Tuitionfee.find_by(id: delete_tuitionFee_id)
        delete_Tuitionfee.destroy

        puts "Tuition Fee with id #{delete_tuitionFee_id} deleted from the Database"

    end

# SALARY MENU

    def salaryMenu

        puts "What would you like to do?"
        puts "Select one of the following options from 1 to 4"
        puts "1. Create a new Salary Category"
        puts "2. List All Salary Categories"
        puts "3. Update a Salary Category"
        puts "4. Delete a Salary Category from Database"

        input = gets.strip

        case input
        when '1'
            new_salary_entry_menu
        when '2'
            Salary.all.each do |amount|
                puts amount.list_all_salaries
            end
        when '3'
            update_a_salary_menu
        when '4'
            delete_a_salary_menu
        end            
    end

    def new_salary_entry_menu

        puts "Creating a new Salary Category in Database"
        puts ""
        puts "Please type the details of new Salary as asked in sequence"
        puts ""
        puts "Please type the Code for new Salary"
        new_salary_code = gets.strip

        puts "Please type the amount of fortnightly Salary"
        new_fortnightly_salary = gets.strip

        Salary.create(
            salary_code: new_salary_code,
            fortnightly_salary: new_fortnightly_salary
        )

        puts "A new Salary Category created with the data you have provided"
        puts "Thank You"
    end

    def update_a_salary_menu
        puts "Updating a Salary Category in the Database"
        puts ""
        puts "Please type the details of Salary Category that to be updated as asked in sequence"
        puts ""
        puts "Please type the Salary ID for the Salary that to be updated"
        update_salary_id = gets.strip

        update_salary = Salary.find_by(id: update_salary_id)
        puts "Salary with ID #{update_salary_id} will be updated in next few steps"

        puts "Please type the new code of the Salary"
        update_salary_code = gets.strip

        puts "Please type the amount of fortnightly Salary"
        update_fortnightly_salary = gets.strip

        update_salary.update(
            salary_code: update_salary_code,
            fortnightly_salary: update_fortnightly_salary
        )

        puts "Salary with ID #{update_salary_id} updated in the Database"
        puts "Thank You"
    end


    def delete_a_salary_menu
        puts "Deleting a Salary Category from Database"
        puts ""
        
        puts "Please type the salary category id which to be deleted from Database"
        delete_salary_id = gets.strip

        delete_salary = Salary.find_by(id: delete_salary_id)
        delete_salary.destroy

        puts "Salary Category with id #{delete_salary_id} deleted from the Database"

    end

# FEE PAYMENT MENU

def feePaymentMenu

    puts "What would you like to do?"
    puts "Select one of the following options from 1 to 4"
    puts "1. Create a new Tuition Fee Payment"
    puts "2. List All Tuition Fee Payments"
    puts "3. Update a Tuition Fee Payment in the Database"
    puts "4. Delete a Tuition Payment from Database"

    input = gets.strip

    case input
    when '1'
        new_tuition_fee_payment_menu
    when '2'
        FeePayment.all.each do |amount|
            puts amount.list_all_feePayments
        end
    when '3'
        update_a_tuition_fee_payment
    when '4'
        delete_a_tuition_fee_payment
    end            
end

def new_tuition_fee_payment_menu

    puts "Creating a new Tuition Fee payment in Database"
    puts ""
    puts "Please type the details of new Tuition Fee payment as asked in sequence"
    puts ""
    puts "Please type the Fee Payment Code for new Tuition Fee payment"
    new_tuition_fee_payment_code = gets.strip

    puts "Please type the Student ID for whom Tuition Fee is paid"
    new_student_id_tuition_fee_payment = gets.strip

    puts "Please type the Grade ID of Student for whom Tuition Fee is paid"
    new_grade_id_tuition_fee_payment = gets.strip

    puts "Please type the date of payment when Tuition Fee was paid"
    new_date_of_payment_tuition_fee = gets.strip

    puts "Please type the amount of payment of the Tuition Fee that was paid"
    new_amount_of_payment_tuition_fee = gets.strip

    FeePayment.create(
        fee_payment_code: new_tuition_fee_payment_code,
        student_id: new_student_id_tuition_fee_payment,
        grade_id: new_grade_id_tuition_fee_payment,
        date_of_payment: new_date_of_payment_tuition_fee,
        amount_of_payment: new_amount_of_payment_tuition_fee
    )

    puts "A new Tuition Fee Payment created with the data you have provided"
    puts "Thank You"
end

def update_a_tuition_fee_payment
    puts "Updating a Tuition Fee Payment in the Database"
    puts ""
    puts "Please type the details of Tuition Fee Payment that to be updated as asked in sequence"
    puts ""
    puts "Please type the Tuition Fee Payment ID that to be updated"
    update_tuition_fee_payment_id = gets.strip

    update_tuition_fee_payment = FeePayment.find_by(id: update_tuition_fee_payment_id)
    puts "Tuition Fee payment with ID #{update_tuition_fee_payment_id} will be updated in next few steps"

    puts "Please type the new code of the Tuition Fee Payment"
    update_tuition_fee_payment_code = gets.strip

    puts "Please type the Student ID of the Tuition Fee Payment"
    update_student_id_tuition_fee = gets.strip

    puts "Please type the Grade ID of the Student for the Tuition Fee Payment"
    update_grade_id_tuition_fee = gets.strip

    puts "Please type the correct date of Tuition Fee Payment"
    update_date_of_tuition_fee_payment = gets.strip       

    puts "Please type the correct amount of Tuition Fee Payment"
    update_amount_of_tuition_fee_payment = gets.strip

    update_tuition_fee_payment.update(
        fee_payment_code: update_tuition_fee_payment_code,
        student_id: update_student_id_tuition_fee,
        grade_id: update_grade_id_tuition_fee, 
        date_of_payment: update_date_of_tuition_fee_payment,
        amount_of_payment: update_amount_of_tuition_fee_payment
    )

    puts "Tuition Fee Payment with ID #{update_tuition_fee_payment_id} updated in the Database"
    puts "Thank You"
end

def delete_a_tuition_fee_payment
    puts "Deleting a Tuition Fee Payment from Database"
    puts ""
    
    puts "Please type the Tuition Fee Payment id which to be deleted from Database"
    delete_tuition_fee_payment_id = gets.strip

    delete_tuition_fee_payment = FeePayment.find_by(id: delete_tuition_fee_payment_id)
    delete_tuition_fee_payment.destroy

    puts "Tuition Fee Payment with id #{delete_tuition_fee_payment_id} deleted from the Database"

end

# SALARY PAYMENT MENU

    def salaryPaymentMenu

        puts "What would you like to do?"
        puts "Select one of the following options from 1 to 4"
        puts "1. Create a new Salary Payment"
        puts "2. List All Salary Payments"
        puts "3. Update a Salary Payment in the Database"
        puts "4. Delete a Salary Payment from Database"

        input = gets.strip

        case input
        when '1'
            new_salary_payment_menu
        when '2'
            SalaryPayment.all.each do |amount|
                puts amount.list_all_salaryPayments
            end
        when '3'
            update_a_salary_payment
        when '4'
            delete_a_salary_payment
        end            
    end

    def new_salary_payment_menu

        puts "Creating a new Salary payment in Database"
        puts ""
        puts "Please type the details of new Salary payment as asked in sequence"
        puts ""
        puts "Please type the Code for new Salary payment"
        new_salary_payment_code = gets.strip

        puts "Please type the Teacher ID to whom salary was paid"
        new_teacher_id_salary = gets.strip

        puts "Please type the date of payment when salary was paid"
        new_date_of_payment_salary = gets.strip

        puts "Please type the amount of Salary paid"
        new_amount_of_payment_salary = gets.strip

        SalaryPayment.create(
            salary_payment_code: new_salary_payment_code,
            teacher_id: new_teacher_id_salary,
            date_of_payment: new_date_of_payment_salary,
            amount_of_payment: new_amount_of_payment_salary
        )

        puts "A new Salary Payment created with the data you have provided"
        puts "Thank You"
    end

    def update_a_salary_payment
        puts "Updating a Salary Payment in the Database"
        puts ""
        puts "Please type the details of Salary Payment that to be updated as asked in sequence"
        puts ""
        puts "Please type the Salary Payment ID that to be updated"
        update_salary_payment_id = gets.strip

        update_salary_payment = SalaryPayment.find_by(id: update_salary_payment_id)
        puts "Salary payment with ID #{update_salary_payment_id} will be updated in next few steps"

        puts "Please type the new code of the Salary Payment"
        update_salary_payment_code = gets.strip

        puts "Please type the Teacher ID of the Salary Payment"
        update_teacher_id_salary = gets.strip

        puts "Please type the correct date of Salary Payment"
        update_date_of_salary_payment = gets.strip       

        puts "Please type the correct amount of Salary Payment"
        update_amount_of_salary_payment = gets.strip  

        update_salary_payment.update(
            salary_payment_code: update_salary_payment_code,
            teacher_id: update_teacher_id_salary,
            date_of_payment: update_date_of_salary_payment,
            amount_of_payment: update_amount_of_salary_payment
        )

        puts "Salary Payment with ID #{update_salary_payment_id} updated in the Database"
        puts "Thank You"
    end

    def delete_a_salary_payment
        puts "Deleting a Salary Payment from Database"
        puts ""
        
        puts "Please type the Salary Payment id which to be deleted from Database"
        delete_salary_payment_id = gets.strip

        delete_salary_payment = SalaryPayment.find_by(id: delete_salary_payment_id)
        delete_salary_payment.destroy

        puts "Salary Payment with id #{delete_salary_payment_id} deleted from the Database"

    end

# WEATHER MENU

    def weatherForecastMenu

        puts "What would you like to do?"
        puts "Select one of the following options"
        puts "1. Check Latest Weather Forecast"
        puts "2. Check All previous forecasts"

        input = gets.strip

        case input
        when '1'
            latest_forecast
        when '2'
            Forecast.all.each do |data|
                puts data.display_forecast
            end
        end            
    end

    def latest_forecast
        updates = JSON.parse(GetWeather.new.getWeather)

        # puts updates

        latestForecast = updates['data'][0] 
            Forecast.create(
                # precipitation: latestForecast['precip'],
                uv_radiation: latestForecast['uv'],
                solar_radiation: latestForecast['solar_rad'],
                temperature: latestForecast['temp'],
                wind_direction: latestForecast['wind_cdir_full'],
                wind_speed: latestForecast['wind_spd'],
                clouds: latestForecast['clouds'],
                # snow: latestForecast['snow'],
                visibility: latestForecast['vis'],
                station_code: latestForecast['station']
                )

        puts Forecast.last.display_forecast
    end

end
