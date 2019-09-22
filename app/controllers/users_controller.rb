class UsersController < ApplicationController
	def new
		@newUser = User.new
	end

	# def create
		# @newUser = User.new
	# end
end
