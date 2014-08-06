class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:name, :email, :password, :password_confirmation]
    # you control which attributes can be updated or used for sign in here
  end


  private

  def after_sign_out_path_for(resource_or_scope)
    user_session_path
  end
end
