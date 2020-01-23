class BookController < ApplicationController
	before_action :authenticate_user!

	def about
	end

	def index
		@book = Book.all
	end

	def show
		@book = Book.find
	end

	private

	def book_params
		params.require(:book)
	end
end
