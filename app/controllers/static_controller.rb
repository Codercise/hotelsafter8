class StaticController < ApplicationController
  before_filter :update_session_location

  def index
  	@location = Location.find(session[:location]).city
  end
end
