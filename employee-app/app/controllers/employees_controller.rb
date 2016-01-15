class EmployeesController < ApplicationController
  def home
    @employee = Employee.first
  end

  def all
    @employees = Employee.all
  end

  def new
    
  end

  def added
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email = params[:email]
    @phone = params[:phone]
    @job_title = params[:job_title]
    @salary = params[:salary]
    @gender = params[:gender]
  end
end
