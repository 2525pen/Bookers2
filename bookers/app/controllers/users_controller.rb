class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@profole_image = User.find(params[:id])
		@user_introduction = User.find(paras[:id])
	end

	def edit
		@user = User.find(params[:id])
		@introduction = User.find(paras[:id])
	end

	def update
		@user = User.find(params[:id])
		@usser.update(user_params)

	def update
		@user = User.find(params[:id])
		@user.update(user_params)
		redirect_to user_path(@user.id)
    end
    def user_params
    	params.require(:user).permit(:name, :introduction, :profile_image)

end
