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

        puts "Please type the date of birth of new Student i.e. 01-01-2022"
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

        puts "Please type TRUE or FALSE if student has sibling in the school"
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
            update_teacher_menu
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

        Teacher.update(
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
            Tuitionfee.all.each do |fee|
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

        Tuitionfee.create(
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
        puts "Please type the details of Tuition that to be updated Fee as asked in sequence"
        puts ""
        puts "Please type the Code for the Tuition Fee that to be updated"
        update_fee_code = gets.strip

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

        Tuitionfee.update(
            fee_code: update_fee_code,
            term_1_fee: update_term_1_fee,
            term_2_fee: update_term_2_fee,
            term_3_fee: update_term_3_fee,
            term_4_fee: update_term_4_fee,
            full_year_fee: update_full_year_fee
        )

        puts "Tuition Fee with code #{update_fee_code} updated in the Database"
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

        latestForecast = updates['data'][0] 
            Forecast.create(
                precipitation: latestForecast['precip'],
                uv_radiation: latestForecast['uv'],
                solar_radiation: latestForecast['solar_rad'],
                temperature: latestForecast['temp'],
                wind_direction: latestForecast['wind_cdir_full'],
                wind_speed: latestForecast['wind_spd'],
                clouds: latestForecast['clouds'],
                snow: latestForecast['snow'],
                visibility: latestForecast['vis'],
                station_code: latestForecast['station'],
                date_time_forecast: DateTime.now
                )

        puts Forecast.last.display_forecast
    end

end


    #   t.string :precipitation
    #   t.string :uv_radiation
    #   t.string :solar_radiation
    #   t.string :temperature
    #   t.string :wind_direction
    #   t.string :wind_speed
    #   t.string :clouds
    #   t.string :snow
    #   t.string :visibility
    #   t.string :station_code
    #   t.datetime :date_time_forecast

        # programs = GetPrograms.new.program_school
        #     programs.each do |program|
        #     User.create({name: program})
        #     end  