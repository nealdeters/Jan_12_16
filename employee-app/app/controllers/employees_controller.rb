class EmployeesController < ApplicationController
  def home
    @employee = Employee.first
  end

  def all
    @employees = Employee.all
  end
end
