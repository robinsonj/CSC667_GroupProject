class DonationsController < ApplicationController
	def new
		months = ['January', ' February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
		daysOfWeek = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
		time = Time.new

		@month = months[time.month-1] #have to subtract one because months are returned 1-12 and array is 0-11
		@dayofweek = daysOfWeek[time.wday]
		@day = time.day

	end
	def donationlist
		@donations = Donation.all
	end
	def show
		if params[:id].present?
			@donation = Donation.find(params[:id])
		end
	end
	def create
	    if params[:title].present? && params[:message].present?
	      Donation.create(:title => params[:title], :message => params[:message], :month => params[:month],
	      	:day => params[:day], :dayofweek=> params[:dayofweek], :photo1=> params[:photo1])
	      render "/pages/confirmation"
	      return #if it's a creation call, exit after.
	    #else
	    	#redirect_to '/donations/new', :notice => "Please enter both title and message fields."
	    end
	    @donations = Donation.all
	    render json: @donations
  	end
end
