class BooksController < ApplicationController
	before_action :authenticate_user!

	def index
		@books = Book.all
		@book = Book.new
	end

	def show
		@book = Book.find(params[:id])
		@post_book = Book.new
		@post_user = @book.user
		@user_plofile = @book.user
	end

	def new
	    @book = Book.new
	end

	def create
	    @book = Book.new(book_params)
	    @book.user_id = current_user.id
	    if @book.save
	       flash[:notice] = "Book was successfully created."
	       redirect_to book_path(@book)
	    else
	       @books = Book.all
	       render 'index'
	    end
	end

	def edit
	    @book = Book.find(params[:id])
	    @profile = User.find(params[:id])
	    @profile_user_id = current_user.id
	    if @book.user.id == current_user.id
	    else
	    	redirect_to books_path
	    end
	end

    def update
    	@book = Book.find(params[:id])
    	if @book.save
    	   flash[:notice] = "Book was successfully created."
       	   redirect_to book_path(@book)
    	else
      		render 'edit'
      	end

      	@profile = User.find(params[:id])
      	if @profile.save
      		flash[:notice] = "You have updated user successfully."
      	else
      		render 'edit'
      	end
    end

	def destroy
	    @book = Book.find(params[:id])
	    @book.destroy
	    redirect_to books_path
	end

	private

	def book_params
	    params.require(:book).permit(:title, :body)
	end
end
