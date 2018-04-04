class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def index
    @events = Event.all
  end

  def create
    #render plain: params[:article].inspect
    @event = Event.new(event_params)
    @event.save
    flash[:notice] = "Event was successfully created."
    redirect_to '/events/new'
  end

  def show
    @event = Event.find(params[:id])
    @events = Event.all
  end


  def event_params
    params.require(:event).permit(:title,:description,:date)
  end

end