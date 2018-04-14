class AdminController < ApplicationController

  def admin

  end

  def events
    @event = Event.new
  end

  def notices
    @notice = Notice.new
    @notices = Notice.all
    @flag = 0
  end

end