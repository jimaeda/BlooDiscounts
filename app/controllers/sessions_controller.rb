class SessionsController < ApplicationController
  before_action :block_access, except: [:destroy]
  def new
  end
  
  def create  
      @admin = Admin.find_by(adm_username: params[:session][:adm_username].downcase)
      if @admin && @admin.authenticate(params[:session][:password])
        sign_in_admin
        redirect_to admins_profile_path
    else
        render 'new'
    end
  end
  def destroy
    sign_out_admin
    redirect_to login_path
  end
end
