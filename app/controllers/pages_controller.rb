class PagesController < ApplicationController
  def home
  end
  def front
  end
  def events
  end
  def eventposts
  end
  def donate
  end
  def postevent
  end
  def aboutus
  end
  def donationlist
    
  end
  def donationposts
  end
  def confirmation
  end
  def newdonation
    Donation.create(:title => params[:title], :description => params[:description])
  end
end
