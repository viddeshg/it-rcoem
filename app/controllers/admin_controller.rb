class AdminController < ApplicationController

  def admin

  end

  def events
    @event = Event.new
    @events = Event.all
    @flag = 0
  end

  def edit_event
    @event = Event.find(params[:id])
    @events = Event.all
    @flag = 0
  end

  def notices
    @notice = Notice.new
    @notices = Notice.all
    @flag = 0
  end

  def edit_notice
    @notice = Notice.find(params[:id])
    @notices = Notice.all
    @flag = 0
  end

  def destroy_notice
    @notice = Notice.find(params[:id])
    @notice.destroy
    flash[:notice] = "Notice was deleted."
    redirect_to '/admin/notices'
  end

  def destroy_event
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = "Event was deleted."
    redirect_to '/admin/events'
  end

end