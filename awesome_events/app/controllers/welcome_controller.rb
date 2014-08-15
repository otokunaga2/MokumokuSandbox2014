class WelcomeController < ApplicationController
  def index
    #@events = Event.where('start_time > ?', Time.zone.now)
    @events = Event.where('start_time < ?', Time.zone.now)
  end
end
