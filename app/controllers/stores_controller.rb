class StoresController < ApplicationController
  before_action :set_store, only: [:show, :edit, :update, :destroy]
  before_action :validate_admin, except: [:show, :index]

  # GET /stores
  # GET /stores.json
  def index
    @stores = Store.all
  end

  # GET /stores/1
  # GET /stores/1.json
  def show
  end

  # GET /stores/new
  def new
    @store = Store.new
    @store.rewards.build
  end

  # GET /stores/1/edit
  def edit
  end

  # POST /stores
  # POST /stores.json
  def create
    @store = Store.new(store_params)
    if params[:add_reward]
      # add empty reward associated with @store
      @store.rewards.build
      render action: :new
    elsif params[:remove_reward]
      render action: :new
    else
      # save goes like usual
      if @store.save
        flash[:notice] = "Loja e produtos cadastrados com sucesso."
        redirect_to admins_profile_path and return
      else
        render action: :new
      end
    end
  end

  # PATCH/PUT /stores/1
  # PATCH/PUT /stores/1.json
  def update
    if params[:add_reward]
      @store.rewards.build
    elsif params[:remove_reward]
      # collect all marked for delete reward ids
      @rewards_attributes = []
      params[:store][:rewards_attributes].each do |index, reward_attributes|
        if reward_attributes[:_destroy] == "1"
          @rewards_attributes.push(reward_attributes[:id])
        end
      end
      if !@rewards_attributes.empty?
        puts(@rewards_attributes)
        Reward.delete(@rewards_attributes)
      end
    else
      if @store.update_attributes(store_params)
        flash[:notice] = "Atualizado loja e produtos com sucesso."
        redirect_to admins_profile_path and return
      end
    end
    render :action => 'edit'
  end

  # DELETE /stores/1
  # DELETE /stores/1.json
  def destroy
    @store.destroy
    respond_to do |format|
      format.html { redirect_to stores_url, notice: 'Store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store
      @store = Store.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_params
      params.require(:store).permit(:name, :category, :address, :email, :phone, {rewards_attributes: [:_destroy, :name, :category, :quantity, :cost, :id] } )
    end
end
