class StudentsController < ApplicationController

    def index
        students = Student.all 
        render json: students
    end

    def grades
        # students not related to "students" in index method
        students = Student.all
        render json: students.order('grade DESC')
        # Canvas solution
        # students = Student.order(grade: :desc)
        # render json: students
    end

    def highest_grade
        students = Student.all
        render json: students.order('grade DESC').first
        #Canvas solution
        # student = Student.order(grade: :desc).first
        # render json: student
    end

end
