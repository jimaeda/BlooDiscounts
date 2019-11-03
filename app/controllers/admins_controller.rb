class AdminsController < ApplicationController
  before_action :set_admin, only: %i[show edit update destroy]

  def profile; end

  def index
    @admins = Admin.all
  end

  # GET /admins/1
  # GET /admins/1.json
  def show; end

  # GET /admins/new
  def new
    @admin = Admin.new
  end

  # GET /admins/1/edit
  def edit
    @admin = Admin.find(params[:id])
  end

  # POST /admins
  # POST /admins.json
  def create
    @admin = Admin.new(admin_params)

    if @admin.save
      redirect_to @admin, notice: 'Usuário foi criado com sucesso!'
      sign_in_admin
    else
      render action: :new
    end
  end

  # PATCH/PUT /admins/1
  # PATCH/PUT /admins/1.json
  def update
    @admin = Admin.find(params[:id])
    puts admin_params
    if admin_params[:password].blank?

    end
    if @admin.update_attributes(admin_params)
      redirect_to @admin
    else
      render action: :edit
    end
  end

  # DELETE /admins/1
  # DELETE /admins/1.json
  def destroy
    # @admin.destroy
    # respond_to do |format|
    #   format.html { redirect_to admins_url, notice: 'Admin was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
    @user = User.find(params[:id])
    @user.destroy
    sign_out_admin
    redirect_to quit_path
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_admin
    @admin = Admin.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def admin_params
    params.require(:admin).permit(:adm_username, :password, :adm_name, :adm_cpf, :hospital_name)
  end
end
