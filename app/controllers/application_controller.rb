class ApplicationController < ActionController::Base

 before_filter :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me, :name, :address, :contact_number) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password, :name, :address, :contact_number) }
  end

  before_filter :setDate #before the respective action is called, call setDate.
  def setDate
  	months = ['January', ' February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
	daysOfWeek = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
	time = Time.new

	@month = months[time.month-1] #have to subtract one because months are returned 1-12 and array is 0-11
	@dayofweek = daysOfWeek[time.wday]
	@day = time.day
  end
end
