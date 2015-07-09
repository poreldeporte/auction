class UsersController < ApplicationController
	def index
		@user = User.all
		render('index')
	end
	def new
		@user = User.new
		render('new')
	end 
	def show

	end
	def create
		@user = User.new(user_params)
		if @user.save 
			redirect_to(users_path)
		else
			render('new')
		end
	end
	def destroy
		@user = User.find(params[:id])

		if @user.destroy
			redirect_to(users_path)
		else
			render('index')
		end 
	end

	private
	def user_params
		return params.require(:user).permit(:name, :email)
	end
end
