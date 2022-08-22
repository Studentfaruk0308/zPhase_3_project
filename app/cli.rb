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

     input = gets.strip

     case input
     when '1'
         studentMenu
     when '2'
         teacherMenu
     when '3'
         gradeMenu
     when '4'
         feeMenu
     when '5'
         salaryMenu
     when '6'
        feePaymentMenu
     when '7'
        salaryPaymentMenu
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
            puts Student.all
        
        when '3'
            update_student_menu
        when '4'
            delete_a_student_menu
        when '5'
            puts "There are total #{Student.count} students in the Database"   
        end
        puts "Do you want to continue (Y/N)?"
        continue = gets.strip

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
                puts Grade.all
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
    
end
