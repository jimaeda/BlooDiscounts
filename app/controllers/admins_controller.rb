class AdminsController < ApplicationController
  before_action :set_admin, only: %i[show edit update destroy]

  def profile; end

  def index
    if @admin.nil? && current_admin.nil?
      redirect_to new_admin_path
    else
      redirect_to admins_profile_path
    end
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
<<<<<<< HEAD
      redirect_to @admin, notice: 'Admin foi criado com sucesso!'
=======
      redirect_to admins_profile_path, notice: 'Admin criado com sucesso!'
>>>>>>> 51b4fac813a917b2219adcb7eeb86a1e419d7767
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

<<<<<<< HEAD
  def register_donation
    if params[:donor].nil?
      return
    end
    donor = User.find_by(id: params[:donor][:id])
    if !donor.nil?
      donor.points = donor.points + 1

      if donor.update(registerdonation_params)
        flash[:notice] = 'Doação registrada.'
        render
      else
        redirect_to admins_profile_path
        flash[:alert] = 'Não foi possível registrar a doação.'
      end
      return
    else
      if donor.nil? && !params[:donor][:id].blank?
        flash[:alert] = 'Usuário não encontrado.'
        render
      end
    end 
  end

  def registerdonation_params
    params.require(:donor).permit(:id, :points)
  end
=======
  def register_donation; end
>>>>>>> 51b4fac813a917b2219adcb7eeb86a1e419d7767

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_admin
    @admin = Admin.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def admin_params
    params.require(:admin)
          .permit(:adm_username, :password, :adm_name, :adm_cpf, :hospital_name)
  end
end