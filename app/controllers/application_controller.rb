class ApplicationController < ActionController::Base
  protect_from_forgery


	def update_session_location
        session[:location] ||= current_user.location_id if (user_signed_in? && current_user.location_id)

        if !session[:location]
            location_info = request_location
        
            if location_info
                @locations = Location.near([location_info.latitude, location_info.longitude], 100)

                if !(@locations.nil?) && @locations.first
                    session[:location] = @locations.first.id
                else
                	session[:location] = Location.first.id
                end
            else
            	session[:location] = Location.find_or_create_by_city_and_state(:city=>"Adelaide", :state=>"South Australia").id
            end
        else
            begin
                Location.find(session[:location])
            rescue Exception => e
                Location.find_or_create_by_city_and_state(:city=>"Adelaide", :state=>"South Australia").id
            end 
        end

    end

    def request_location
		if Rails.env.production?
			request.location
		else
			Location.last
		end


	end
end
