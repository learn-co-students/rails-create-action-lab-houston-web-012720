class TeachersController < ApplicationController
  
    def index
      @teachers = Teacher.all
    end
  
    def show
      @teacher = Teacher.find(params[:id])
    end
  
    def new
    end
  
    def create
      # @student = Student.new 
      # @student.first_name = params[:first_name]
      # @student.last_name = params[:last_name]
      # @student.save
      @teacher = Teacher.create(first_name: params[:first_name], last_name: params[:last_name], age: params[:age].to_i)
      redirect_to teacher_path(@teacher)
    end
  
  end