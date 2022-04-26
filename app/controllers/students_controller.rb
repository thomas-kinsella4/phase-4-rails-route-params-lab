class StudentsController < ApplicationController

  def index
    # students = Student.all
    # render json: students
    students = if params[:name] 
      Student.where(name: params[:name])
    else 
      Student.all
    end
    render json: students
  end

  def show
    render json: Student.all.find(params[:id])
  end

end
