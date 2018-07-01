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
    @student = Student.new
    @student.student_first_name = params[:student_first_name]
    @student.student_last_name = params[:student_last_name]
    @student.save
    redirect_to school_class_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student))
    redirect_to school_class_path(@student)
  end
end
