class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def index
    @book = Book.new
  end

  def show
  end
end

private

def book_params
  params.require(:book).permit(:title, :body)
end