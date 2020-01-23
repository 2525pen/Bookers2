class UsersBooksController < ApplicationController
  def new
    @book =Book.new
    @book =current_user.books.build
  end

  def create
    @book = Book.new(post_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to books_path
    else
      render :new
  end

  def index
    @book = Book.all(params[:id]).reverse_order
  end

  def show
    @post = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
  end

  def dentroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end
end
