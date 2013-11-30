class AjaxController < ApplicationController
  def rooms
  	@rooms = Room.all
  	render file: '/ajax/room', layout: false#, collection: rooms
  end
end
