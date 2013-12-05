class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

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
