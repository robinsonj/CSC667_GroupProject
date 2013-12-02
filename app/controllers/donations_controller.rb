class DonationsController < ApplicationController
	def donate
	end
	def donationlist
	end
	def donationposts
		if params[:id].present?
			@donation = Donation.find(params[:id])
		end
	end
	def newdonation
	    if params[:title].present? && params[:message].present?
	      Donation.create(:title => params[:title], :message => params[:message], :month => params[:month],
	      	:day => params[:day], :dayofweek=> params[:dayofweek])
	      return #if it's a creation call, exit after.
	    end
	    @donations = Donation.all
	    render json: @donations
  	end
end
