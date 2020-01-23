class UsersInfoController < ApplicationController

  def show
  	@profile_image = Profile_image.find(psrams[:page])
  	@name = Name.find(params[:id])
  	@introduction = Introduction.find(params[:id])
  end

  def edit
  	@profile_image = Profile_image.find(psrams[:page])
  	@name = Name.find(params[:id])
  	@introduction = Introduction.find(params[:id])
  end

  def update
  	@profile_image = Profile_image.find(psrams[:page])
  	@name = Name.find(params[:id])
  	@introduction = Introduction.find(params[:id])
  end
end
