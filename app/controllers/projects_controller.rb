class ProjectsController < ApplicationController
  
    def index
      @projects = Project.all
    end
  
    def show
      @project = Project.find(params[:id])
    end
  
    def new
        @teachers = Teacher.all
        @students = Student.all 
    end
  
    def create
      # @student = Student.new 
      # @student.first_name = params[:first_name]
      # @student.last_name = params[:last_name]
      # @student.save
      @project = Project.create(project_name: params[:project_name], teacher_id: params[:teacher_id].to_i, student_id: params[:student_id].to_i)
      redirect_to project_path(@project)
    end

    private 
        def 
  
  end