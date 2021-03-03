class StudentsController < ApplicationController
  before_action :set_student, only: %i[show edit]

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def edit
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end
end
