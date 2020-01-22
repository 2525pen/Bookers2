class BookController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :show, :inedex, :edit, :destroy]

	def top
	end

	def new
		＠book ＝　Book.new
	end
	def create
		@book = Book.new(book_params)
		@book.user_id = current_user.id
		if @book.save
			redirect_to books_path
		else
			render :new
		end
	end

	def index
		@book = Book.all
	end

	def show
	end

	def destroy
		@book = Book.find(params[:id])
		@book.destroy
		redirect_to books_path
	end

	private

	def book_params
		params.require(:book)
	end
end