class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end

  def edit 
    @student = Student.find(params[:id])
    @teachers = Teacher.all 
    @projects = Project.select{|project| project.student_id != @student.id}
  end

  def update 

  end

  private 
    def student_params 
      params.require(:student).permit(:first_name, :last_name, :age)
    end 

end
