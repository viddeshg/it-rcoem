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
    redirect_to '/admin/events'
  end

  def show
    @event = Event.find(params[:id])
    @events = Event.all
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    flash[:notice] = "Event was successfully edited."
    redirect_to '/admin/events'
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = "Event was deleted."
    redirect_to '/admin/events'

  end

  def event_params
    params.require(:event).permit(:title,:description,:date)
  end

end