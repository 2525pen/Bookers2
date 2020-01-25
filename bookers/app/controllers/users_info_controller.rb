class UsersInfoController < ApplicationController
	before_action :authenticate_user!

  def show
  	@user_info = User.find(psrams[:id])
  end

  def edit
  	@user_info = User.find(psrams[:id])
  end

  def update
  	@user_info = User.find(psrams[:id])
  	@user_info.update(user_params)
  	if @user_info.save
	  	redirect_to user_books_path(@user.id)
	else
	 	render :edit
	end
  end

   private

  def book_params
    params.require(:user).permit(:name, :introduction, :profile_image_id)
  end

end
