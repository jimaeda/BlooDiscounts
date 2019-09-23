class SessionsController < ApplicationController
	include SessionsHelper
	def new
		if is_user_signed_in
			redirect_to user_path(current_user)
		end
	end
	# def create
	# end
end
