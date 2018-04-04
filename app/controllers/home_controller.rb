class HomeController < ApplicationController
  def self.home
    @events = Event.all
  end
end