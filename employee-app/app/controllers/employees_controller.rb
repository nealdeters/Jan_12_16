class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def new
 
  end

  def create
    @employee = Employee.create({first_name: params[:first_name],
                                last_name: params[:last_name],
                                email: params[:email],
                                phone_number: params[:phone],
                                job_title: params[:job_title],
                                salary: params[:salary],
                                gender: params[:gender]})
    
    flash[:success] = "New Employee Created"

    redirect_to "/"
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])

    @employee.update({first_name: params[:first_name],
                      last_name: params[:last_name],
                      email: params[:email],
                      phone_number: params[:phone],
                      job_title: params[:job_title],
                      salary: params[:salary],
                      gender: params[:gender]})

    flash[:info] = "Employee Updated"

    redirect_to "/employees/#{@employee.id}"
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy

    flash[:danger] = "Employee Deleted"

    redirect_to '/'
  end
end
