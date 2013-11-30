class DonationsController < ApplicationController
	def donate
	end
	def donationlist
	end
	def donationposts
	end
	def newdonation
	    if params[:title].present? && params[:message].present?
	      Donation.create(:title => params[:title], :message => params[:message])
	      return
	    end
	    @donations = Donation.all
	    render json: @donations
  	end
end
