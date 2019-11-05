module SessionsHelper
    def sign_in_admin
        session[:admin_id] = @admin.id
    end

    def current_admin
        @current_admin ||= Admin.find_by(id: session[:admin_id])
    end

    def block_access
        if current_admin.present?
            redirect_to admins_profile_path
        end
    end

    def sign_out_admin
		session.delete(:admin_id)
		@current_admin = nil
	end
end
