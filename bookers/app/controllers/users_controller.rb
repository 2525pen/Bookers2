class UsersController < ApplicationController
	before_action :authenticate_user!

	def index
	end

	def show
	end


    def user_params
    	params.require(:user).permit(:name, :introduction, :profile_image)

end
