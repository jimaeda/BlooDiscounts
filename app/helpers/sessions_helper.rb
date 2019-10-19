module SessionsHelper
    def sign_in
        session[:admin_id] = @admin.id
    end

    def current_admin
        @current_admin ||= Admin.find_by(id: session[:admin_id])
    end

    def block_access
        if current_admin.present?
            redirect_to admins_path
        end
    end

    def sign_out
		session.delete(:admin_id)
		@current_admin = nil
	end
end
