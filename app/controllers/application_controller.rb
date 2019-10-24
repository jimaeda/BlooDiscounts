class ApplicationController < ActionController::Base
	include SessionsHelper
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name,:last_name,
			:weight,:age,:height,:city,:state,:country,:points,:bloodtype,:birthdate])
		devise_parameter_sanitizer.permit(:account_update, keys: [:first_name,:last_name,
			:weight,:age,:height,:city,:state,:country,:points,:bloodtype,:birthdate])
	end

	def after_sign_in_path_for(resource)
		user_profile_path
	end
end
