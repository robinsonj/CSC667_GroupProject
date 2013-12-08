class EventsController < ApplicationController
  def new
  	#look in application_controller.rb for set date variables
  end

  def eventslist
  	@events = Event.all
  end

  def show
  	if params[:id].present?
		  @event = Event.find(params[:id])
	  end
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

  def edit
    if params[:id].present?
      @event = Event.find(params[:id])
    end
  end

  def update
    if params[:title].present? && params[:message].present? && params[:photo1].present?
      Event.update(params[:id], :title => params[:title], :message => params[:message], :photo1=> params[:photo1])
      render "/pages/editconfirm"
    elsif params[:title].present? && params[:message].present?
      Event.update(params[:id], :title => params[:title], :message => params[:message])
      render "/pages/editconfirm"
    else
      redirect_to '/events/edit/' + params[:id], :notice => "Please enter both title and message fields."
    end
  end

  def destroy
    if params[:id].present?
      @event = Event.find(params[:id])
      @event.destroy
      render "/pages/deleteconfirm"
    end
  end
end
