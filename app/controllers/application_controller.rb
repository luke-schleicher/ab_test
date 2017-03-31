class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  before_action :get_employees

  def after_sign_in_path_for(employee)
    employee_url(employee)
  end

  private

    def get_employees
      @employees = Employee.all
    end
end
