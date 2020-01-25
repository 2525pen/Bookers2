class BookController < ApplicationController
	before_action :authenticate_user!

	def index
		@my_books = Book.where(current_user[:id])
		@books = Book.all(params[:id]).reverse_order
	end

	def show
		@book = Book.find(params[:id])
		@book = Book.new
	end

	def new
	    @book = Book.new
	    @book = current_user.books.build
	end

	def create
	    @book = Book.new(books_params)
	    @book.user_id = current_user.id
	    if @book.save
	       flash[:notice] = "Book was successfully created."
	       redirect_to book_path(@book)
	    else
	       @books = Book.all(params[:id]).reverse_order
	       render 'index'
	    end
	end

	def edit
	    @book = Book.find(params[:id])
	end

    def update
    	@book = Book.find(params[:id])
    	if @book.save
    	   flash[:notice] = "Book was successfully created."
       	   redirect_to book_path(@book)
    	else
      		render 'edit'
      	end
    end

	def dentroy
	    book = Book.find(params[:id])
	    book.destroy
	    redirect_to books_path
	end

	private

	def book_params
	    params.require(:book).permit(:title, :body)
	end

end
