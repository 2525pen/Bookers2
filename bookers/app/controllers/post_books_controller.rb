class BookController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :show, :inedex, :edit, :destroy]

	def top
	end

	def new
		@post ＝　Book.new
		@post = current_user.posts.build
	end
	def create
		@post = Book.new(post_params)
		@post.user_id = current_user.id
		if @post.save
			redirect_to posts_path
		else
			render :new
		end
	end

	def index
		@post = Book.all(params[:id]).reverse_order
	end

	def show
		@post = Book.find(params[:id])
	end

	def destroy
		@post = Book.find(params[:id])
		@post.destroy
		redirect_to books_path
	end

	private

	def book_params
		params.require(:book)
	end
end
