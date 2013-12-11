class DonationsController < ApplicationController
	before_filter :authenticate_user!, :except => [:donationlist]
	def new
		#look in application_controller.rb for set date variables
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
	      	:day => params[:day], :dayofweek=> params[:dayofweek], :photo1=> params[:photo1], :user_id => params[:userid] )
	      render "/pages/confirmation"
	      return #if it's a creation call, exit after.
	    else
	    	redirect_to '/donations/new', :notice => "Please enter both title and message fields."
	    end
	    #@donations = Donation.all
	    #render json: @donations
  	end

  	def edit
  		if params[:id].present?
			@donation = Donation.find(params[:id])
		end
  	end

  	def update
  		if params[:title].present? && params[:message].present? && params[:photo1].present?
	      Donation.update(params[:id], :title => params[:title], :message => params[:message], :photo1=> params[:photo1])
	      render "/pages/editconfirm"
	  	elsif params[:title].present? && params[:message].present?
	      Donation.update(params[:id], :title => params[:title], :message => params[:message])
	      render "/pages/editconfirm"
	    else
	    	redirect_to '/donations/edit/' + params[:id], :notice => "Please enter both title and message fields."
	    end
  	end

  	def destroy
  		if params[:id].present?
  			@donation = Donation.find(params[:id])
  			@donation.destroy
  			render "/pages/deleteconfirm"
  		end
  	end
end
