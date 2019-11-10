class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

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
      redirect_to @admin, notice: 'Admin foi criado com sucesso!'
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
    @admin = Admin.find(params[:id])
    @admin.destroy
    sign_out_admin
    redirect_to quit_path
  end

  def register_donation
    puts("entrou na funcao")
    if params[:user].nil?
      puts("Form vazio")      
      return
    end

    puts(params[:user][:amount_donated])
    if params[:user][:id].nil? || params[:user][:amount_donated].nil?
      puts("parametro vazio")
      puts(params[:user][:id])

      puts(params[:user][:amount_donated])

      return
    end
    user = User.find_by(id: params[:user][:id])
    if !user.nil?
      user.points = user.points + 1

      if user.update user_params
        puts("funfou")
      else
        puts("nao funfou")
        render :edit
      end
    else
      puts("Usuário não encontrado.")
    end
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
