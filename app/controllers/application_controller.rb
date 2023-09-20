class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # Adjust the permitted attributes according to your model's attribute names
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :avatar, :height, :weight, :goals])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :current_password, :avatar, :height, :weight, :goals])
  end
end
