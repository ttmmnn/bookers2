class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def index
    # createアクションでredirect_toをするためのインスタン変数
    @book = Book.new

    @books = Book.all
  end

  def show
    @book =Book.find(params[:id])
  end
  
end

private

def book_params
  params.require(:book).permit(:title, :body)
end