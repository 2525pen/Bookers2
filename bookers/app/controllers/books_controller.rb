class BookController < ApplicationController
	before_action :authenticate_user!

	def index
		@book = Book.all
	end

	def show
		@book = Book.find(params[:id])
	end

end
