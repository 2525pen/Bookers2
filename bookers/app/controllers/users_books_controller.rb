class UsersBooksController < ApplicationController
  before_action :authenticate_user!

  def new
    @book =Book.new
    @book =current_user.books.build
  end

  def create
    @book = Book.new(books_params)
    @book.user_id = current_user.id
    if @book.save
      　redirect_to controller: 'users_books', action: show, id: id
    else
      render :new
  end

  def index
    @book = Book.all(params[:id]).reverse_order
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.save
       redirect_to controller: 'users_books', action: show, id: id
    else
      render :edit
    end
  end

  def dentroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
