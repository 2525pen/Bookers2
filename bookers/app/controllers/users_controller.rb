class UsersController < ApplicationController
	before_action :authenticate_user!

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		@my_books = Book.where(current_user[:id])　まだ調べてない
	end

  	def edit
  		@user = User.find(psrams[:id])
  	end

  	def update
  		@user = User.find(params[:id])
  		@user.update(user_params)
  		if  @user_info.save
  			flash[:notice] = You have updated user successfully.
	  	    redirect_to mypage_path
	    else
	 	    render 'edit'
	    end
    end

    private

 	def book_params
        params.require(:user).permit(:name, :introduction, :profile_image_id)
    end

end