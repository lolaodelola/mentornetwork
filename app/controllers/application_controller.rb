class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username job_role booking_url])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[username tag_ids job_role booking_url])
  end
end
