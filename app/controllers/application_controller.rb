class ApplicationController < ActionController::Base
  # Permit the additional field
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:update, keys: [:first_name, :last_name, :url])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :last_name])
  end
end
