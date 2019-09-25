class UsersController < ApplicationController
	#GET /users/new
	def new
		@newUser = User.new
	end

	#GET /users/1
	#GET /users/1.json
	def show
	end

	#GET /users/1/edit
	def edit
	end

	#GET /users/
	#GET /users/users.json
	def index
		@users = User.all
	end

	#POST /users
	#POST /users.json
	def create
		@newUser = User.new(user_params)

		respond_to do |format|
			if @newUser.save
				format.html { redirect_to users_url, notice: 'Usuário criado com sucesso.' }
				format.json { render action: 'show', status: :created, location: @newUser }
			else
				format.html { render action: 'new'}
				format.json { render json: @newUser.errors, status: :unprocessable_entity}
			end
		end
	end

	#PATCH/PUT /users/1
	#PATCH/PUT /users/1.json
	def update
		respond_to do |format|
			if @newUser.update(user_params)
				format.html { redirect_to users_url, notice: 'Usuário atualizado com sucesso.' }
				format.json { head :no_content }
			else
				format.html { render action: 'edit' }
				format.json { render json: @newUser.erros, status: :unprocessable_entity }
			end
		end
	end
end
