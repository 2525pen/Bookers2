class UsersController < ApplicationController
	before_action :authenticate_user!



	def index
		@users = User.all
    @book = Book.new
	end

	def show
        @user = User.find(params[:id])
		    @users_books = @user.books.all
        @book = Book.new
	end

  def new
    @book = Book.new
  end

  def create
    # @book = Book.new(book_params)
    # if
    #   @book.save
    #   flash[:notice] = "You have creatad book successfully."
    #   redirect_to book_path(@book)
    # else
    #   @books = Book.all
    #   render 'books/index'
    # end
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

 	def user_params
        params.require(:user).permit( :name, :introduction, :profile_image_id)
    end

end