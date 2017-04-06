class HomeController < ApplicationController
  def index
  	if current_user
  		redirect_to schedules_path
  	end
  end
end
