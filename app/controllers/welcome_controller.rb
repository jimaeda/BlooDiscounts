class WelcomeController < ApplicationController
	def index
		if (params.has_key?(:id) && params.has_key?(:user))
			@id = params['id']
			@user = params[:user]
		end
	end
	def sample
		@controller_message = "Hello from controller"
	end
end
