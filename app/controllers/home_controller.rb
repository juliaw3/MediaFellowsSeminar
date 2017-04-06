class HomeController < ApplicationController
  def index

  	# this if statement is needed if we want all users to have to log in (path is incorrect)
  	#if current_user
  	#	redirect_to schedules_path
  	#end
  end
end
