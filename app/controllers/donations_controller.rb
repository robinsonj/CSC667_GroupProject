class DonationsController < ApplicationController
	def new
	end
	def donationlist
	end
	def donationposts
		if params[:id].present?
			@donation = Donation.find(params[:id])
		end
	end
	def create
	    if params[:title].present? && params[:message].present?
	      Donation.create(:title => params[:title], :message => params[:message], :month => params[:month],
	      	:day => params[:day], :dayofweek=> params[:dayofweek])
	      render "/pages/confirmation"
	      return #if it's a creation call, exit after.
	    end
	    @donations = Donation.all
	    render json: @donations
  	end
end
