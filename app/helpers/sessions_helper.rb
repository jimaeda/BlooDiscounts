module SessionsHelper

	def sign_in(user)
        session[:user_id] = user.id
    end

    def sign_out
        session.delete(:user_id)
    end


	def logged_user
        @logged_user ||= User.find_by(id: session[:user_id])
    end

	def is_user_signed_in
		!logged_user.nil?
	end
end
