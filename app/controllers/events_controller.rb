class EventsController < ApplicationController
  def eventslist
  	@events = Event.all
  end
  def show
  	if params[:id].present?
		@event = Event.find(params[:id])
	end
  end
  def new

  end
  def create
  	if params[:title].present? && params[:message].present?
	      Event.create(:title => params[:title], :message => params[:message], :month => params[:month],
	      	:day => params[:day], :dayofweek=> params[:dayofweek], :photo1=> params[:photo1])
	      render "/pages/confirmation"
	      return #if it's a creation call, exit after.
	    else
	    	redirect_to '/events/new', :notice => "Please enter both title and message fields."
	    end
  end
end
