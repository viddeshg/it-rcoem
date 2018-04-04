class HomeController < ApplicationController
  def home
    @events = Event.all
    @notices = Notice.all

  end
end