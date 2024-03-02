class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected
  def after_sign_in_path_for(resource)
    case resource.role
    when "student"
      students_path
    when "admin"
      admin_dashboard_path
    when "instructor"
      instructor_path
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :role])
  end
end
